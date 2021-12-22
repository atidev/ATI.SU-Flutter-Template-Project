import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Миксин для расширения возможностей блока на поддежку SingleResult  - событий которые необходимо отрендерить 1 раз
/// - Навгиация
/// - Тост
/// - Снек
/// - Какое-то взаимодействие с анимацией
mixin SingleResultMixin<Event, State, SR> on Bloc<Event, State>
    implements SingleResultProvider<SR>, SingleResultEmmiter<SR> {
  @protected
  final StreamController<SR> _srController = StreamController.broadcast();

  @override
  Stream<SR> get singleResults => _srController.stream;

  @override
  void addSr(SR sr) {
    final observer = BlocOverrides.current?.blocObserver;
    if (observer is SrBlocObserver) observer.onSr(this, sr);
    if (!_srController.isClosed) _srController.add(sr);
  }

  @override
  Future<void> close() {
    _srController.close();

    return super.close();
  }
}

/// Протокол для предоставления потока событий [SingleResult]
abstract class SingleResultProvider<SingleResult> {
  Stream<SingleResult> get singleResults;
}

/// Протокол для приема событий [SingleResult]
abstract class SingleResultEmmiter<SingleResult> {
  void addSr(SingleResult sr);
}

/// Расширение Observer для поддержки логирования SingleResult событий
class SrBlocObserver<SR> extends BlocObserver {
  @protected
  @mustCallSuper
  void onSr(Bloc bloc, SR sr) {}
}
