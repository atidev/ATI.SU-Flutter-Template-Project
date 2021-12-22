import 'package:ati_su_flutter_template_project/arch/key_value_store_migrator/key_value_store.dart';
import 'package:ati_su_flutter_template_project/arch/key_value_store_migrator/key_value_store_migrator.dart';
import 'package:ati_su_flutter_template_project/core/storage/migration_observer_logger.dart';
import 'package:ati_su_flutter_template_project/core/storage/sharedPrefs/store_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Базовая реализация над [KeyValueStore] для [SharedPreferences]
///
/// Перед использованием необходимо вызывать [init]
@Singleton(as: KeyValueStore)
class SharedPrefsKeyValueStore implements KeyValueStore {
  late SharedPreferences _sharedPreferences;

  @override
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<T?> read<T>(TypeStoreKey<T> typedStoreKey) async => _sharedPreferences.get(typedStoreKey.key) as T?;

  @override
  Future<bool> contains(TypeStoreKey typedStoreKey) async => _sharedPreferences.containsKey(typedStoreKey.key);

  @override
  Future<void> write<T>(TypeStoreKey<T> typedStoreKey, T? value) async {
    if (value == null) {
      await _sharedPreferences.remove(typedStoreKey.key);

      return;
    }
    switch (T) {
      case int:
        await _sharedPreferences.setInt(typedStoreKey.key, value as int);
        break;
      case String:
        await _sharedPreferences.setString(typedStoreKey.key, value as String);
        break;
      case double:
        await _sharedPreferences.setDouble(typedStoreKey.key, value as double);
        break;
      case bool:
        await _sharedPreferences.setBool(typedStoreKey.key, value as bool);
        break;
      case List:
        await _sharedPreferences.setStringList(typedStoreKey.key, value as List<String>);
        break;
    }
  }
}

@Singleton(as: KeyValueStoreMigrator)
class KeyValueStoreMigratorImpl extends KeyValueStoreMigrator {
  KeyValueStoreMigratorImpl({
    required KeyValueStore keyValueStore,
    required MigrationObserverLogger observer,
  }) : super(
          keyValueStore: keyValueStore,
          migrations: {},
          schemaVersion: 1,
          schemaVersionKey: StoreKeys.prefsVersionKey,
          observer: observer,
        );
}
