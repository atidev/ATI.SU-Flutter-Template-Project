/// Обозреватель событий-миграцийй, используется в реализациях миграторов для логирования миграций
abstract class MigrationObserver {
  Future<void> onCreate(int createdVersion);
  Future<void> onMissedMigration(int version);
  Future<void> onUpgrade(int fromVersion, int toVersion);
}
