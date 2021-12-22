import 'dart:async';

import 'package:ati_su_flutter_template_project/app/router/guards/auth_guard.dart';
import 'package:ati_su_flutter_template_project/core/user/user_repository.dart';
import 'package:ati_su_flutter_template_project/features/splash/data/startup_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:synchronized/synchronized.dart';

/// Протокол для работы с интерактором, отвечающим за логику старта приложения
abstract class StartupInteractor {
  Future<void> initialize();

  Future<void> dispose();
}

/// Базовая реализация [StartupInteractor]
@Singleton(as: StartupInteractor)
class StartupInteractorImpl implements StartupInteractor {
  static const _initDelayInSec = 3;

  @protected
  final StartupRepository startupRepository;
  @protected
  final UserRepository userRepository;
  @protected
  final AuthGuard authGuard;

  final Lock _initializeLock = Lock();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  StartupInteractorImpl({
    required this.startupRepository,
    required this.userRepository,
    required this.authGuard,
  });

  @override
  Future<void> initialize() => _initializeLock.synchronized(() async {
        _listenGlobalBroadcasts();
        await Future.delayed(const Duration(seconds: _initDelayInSec));
        startupRepository.initialized();
      });

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _compositeSubscription.cancel();
  }

  void _listenGlobalBroadcasts() {
    _compositeSubscription.add(
      userRepository.authStream().listen((_) => authGuard.reevaluate()),
    );
  }
}
