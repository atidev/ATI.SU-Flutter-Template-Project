import 'package:drift/drift.dart';

/// Протокол над реализацией логики миграции Drift
abstract class DriftMigrationLogic<Db> {
  /// Версия на которую мы мигрируем
  int get schemeVersion;

  /// Метод миграции Moor на версию [schemeVersion]
  Future<void> migrate(Db database, Migrator m);
}
