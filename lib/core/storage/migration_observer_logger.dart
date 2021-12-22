import 'package:ati_su_flutter_template_project/arch/migration_observer/migration_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Реализация обозревателя миграций, логирующего информацию о миграциях
@singleton
class MigrationObserverLogger implements MigrationObserver {
  @protected
  final Logger logger;

  MigrationObserverLogger(this.logger);

  @override
  Future<void> onCreate(int createdVersion) async {
    logger.d('SharedPrefs onCreate $createdVersion');
  }

  @override
  Future<void> onMissedMigration(int version) async {
    logger.e('SharedPrefs onMissedMigration  $version');
  }

  @override
  Future<void> onUpgrade(int fromVersion, int toVersion) async {
    logger.e('SharedPrefs onUpgrade $fromVersion -> $toVersion');
  }
}
