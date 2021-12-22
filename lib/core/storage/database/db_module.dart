import 'package:ati_su_flutter_template_project/arch/drift_migrator/drift_migrator.dart';
import 'package:ati_su_flutter_template_project/core/storage/database/app_database.dart';
import 'package:ati_su_flutter_template_project/core/storage/database/db_query_executor/shared.dart';
import 'package:ati_su_flutter_template_project/core/storage/migration_observer_logger.dart';
import 'package:injectable/injectable.dart';

/// Модуль для поставления зависимостей, связанных с БД Moor
@module
abstract class DbModule {
  /// При необходимости новой миграции нужно увеличить версию [schemaVersion] (N)
  /// Реализовать новую миграцию на версию N - MoorMigrationN, и добавить ее в перечень [migration]
  @singleton
  AppDatabase appDatabase({
    required MigrationObserverLogger observer,
  }) {
    return AppDatabase(
      queryExecutor: createQueryExecutor(),
      migrator: DriftMigrator<AppDatabase>(
        migrationLogics: {},
        schemaVersion: 1,
        observer: observer,
      ),
    );
  }
}
