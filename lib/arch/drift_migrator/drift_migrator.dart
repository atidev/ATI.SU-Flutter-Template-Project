import 'package:ati_su_flutter_template_project/arch/drift_migrator/drift_migration_logic.dart';
import 'package:ati_su_flutter_template_project/arch/migration_observer/migration_observer.dart';
import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';

typedef DriftCreateFunc = Future<void> Function(Migrator m);

/// Сущность производяющая миграции Drift
class DriftMigrator<Db> {
  /// Набор миграций Drift
  @protected
  final Set<DriftMigrationLogic<Db>> migrationLogics;

  /// Начальная функция созднаия Drift-DB,
  ///
  /// По умолчанию задается ` m.createAll();`
  @protected
  final DriftCreateFunc onCreateFunc;

  /// Листенер миграций, для логирования или внедрения промежуточных операций, после выполнения миграции
  @protected
  final MigrationObserver? observer;

  /// Версия БД до которой производится миграция
  final int schemaVersion;

  /// Выполняется после того, как база данных готова к использованию (т.е. она была открыта и все миграции были выполнены),
  /// но до того, как будут выполнены какие-либо другие запросы.
  /// Это делает его подходящим местом для заполнения данных после создания базы данных или
  /// установки необходимых вам "PRAGMA" sqlite.
  final OnBeforeOpen? beforeOpen;

  DriftMigrator({
    required this.migrationLogics,
    required this.schemaVersion,
    this.observer,
    this.beforeOpen,
    DriftCreateFunc? onCreateFunc,
  }) : onCreateFunc = onCreateFunc ?? _defaultOnCreate;

  /// Метод создающий делегируемую [DriftMigrator] стратегию миграции
  MigrationStrategy delegateStrategy(Db db) => MigrationStrategy(
        onCreate: (m) => onCreate(m, db),
        onUpgrade: (m, from, to) => onUpgrade(m, from, to, db),
        beforeOpen: beforeOpen,
      );

  /// Метод первичного создания БД
  Future<void> onCreate(Migrator m, Db db) async {
    await onCreateFunc(m);
    await observer?.onCreate(schemaVersion);
  }

  /// Метод миграции БД с версии from на версию to
  /// Последовательно выполняем миграцию, вызывая метод [_migrate]
  Future<void> onUpgrade(Migrator m, int from, int to, Db db) async {
    var version = from;
    while (version < to) {
      version++;
      await _migrate(db, version, m);
    }
    await observer?.onUpgrade(from, to);
  }

  /// При первом создании инициализируем сразу конечную версию БД
  /// В данном случае просто создаем все таблицы с нуля
  static Future<void> _defaultOnCreate(Migrator m) => m.createAll();

  /// Метод миграции [database]
  Future<void> _migrate(Db database, int schemaVersion, Migrator m) async {
    final migrationLogic = migrationLogics.firstWhereOrNull((migrator) => migrator.schemeVersion == schemaVersion);

    if (migrationLogic == null) {
      await observer?.onMissedMigration(schemaVersion);
    } else {
      //Если нашли логику миграции, и она правда  нужна для этой версии схемы
      // (тут применяется двойная проверка версии, как на уровне ключа мапы, так и из внутренней константы)
      await migrationLogic.migrate(database, m);
    }
  }
}
