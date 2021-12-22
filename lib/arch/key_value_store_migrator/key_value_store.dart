/// Протокол для типизированное хранилища данных вида ключ-значение, работающее с [TypeStoreKey]
abstract class KeyValueStore {
  /// Метод проверяющий, что по ключу [typedStoreKey], хранится какое-либо значение
  Future<bool> contains(TypeStoreKey typedStoreKey);

  /// Метод для инициализации хранилища
  Future<void> init();

  /// Метод для чтения значения по ключу [typedStoreKey], в случае если значение отсутсвует возращается null
  /// Если значение находится в хранилище, его тип приводится к [T]
  Future<T?> read<T>(TypeStoreKey<T> typedStoreKey);

  /// Метод для записи значения по ключу [typedStoreKey], при необходимости удалить значение необходимо передать null
  Future<void> write<T>(TypeStoreKey<T> typedStoreKey, T? value);
}

/// Обьект типизированный ключ используемый в key-value хранилищах для более удобной работы с ними
/// [T] - тип хранимого значения
/// [key] - строковый ключ
///
/// Хранилище может ограничивать типизацию [T], обычно оно ограничивается стандартными типами: [int], [double], [String], [bool].
class TypeStoreKey<T> {
  final type = T;

  final String key;
  TypeStoreKey(
    this.key,
  );

  @override
  String toString() => 'TypeStoreKey(key: $key)';
}
