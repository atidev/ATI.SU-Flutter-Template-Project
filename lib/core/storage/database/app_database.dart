import 'package:ati_su_flutter_template_project/arch/drift_migrator/drift_migrator.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';

part 'app_database.g.dart';

/// Сущность для отображения базы данных Moor
/// В случае добавления новых табилц или Dao, нужно их добавлять в UseMoor
@DriftDatabase(
  tables: [],
  daos: [],
)
class AppDatabase extends _$AppDatabase {
  @protected
  final DriftMigrator<AppDatabase> migrator;

  @override
  MigrationStrategy get migration => migrator.delegateStrategy(this);

  @override
  int get schemaVersion => migrator.schemaVersion;

  AppDatabase({
    required QueryExecutor queryExecutor,
    required this.migrator,
  }) : super(queryExecutor);
}
