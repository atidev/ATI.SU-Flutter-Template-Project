# ATI.SU-Flutter-Template-Project

Шаблон проекта от компании ATI.SU, отображающий пример использования технологии Flutter в мультиплатформенной разработке. 
Решения и архитектура включенная в проект была собрана с целью повысить стабильность и качество разработки Flutter проектов.

## Для новичков во Flutter

Некоторые ресурсы для начала, если это ваш первый проект Flutter:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

Ссылка на отличную онлайн-документацию по Flutter (содержит туториалы, примеры, ссылки на API документацию и т. д.)
[online documentation](https://flutter.dev/docs)

Оффициальный YouTube канал:
- https://www.youtube.com/c/flutterdev

Ресурсы на русском;
- https://www.youtube.com/c/LearnDartFlutter/playlists
- https://www.youtube.com/watch?v=vH5jQpVTVpU&list=PLrnbjo4fMQwYOmdhRY88xPbrMa5qC4nKK

## Первый запуск

```bash
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter pub run easy_localization:generate --source-dir assets/translations -f keys -o locale_keys.g.dart
flutter run
```

## Команды для проекта

### Сборка приложения

#### Параметры Сборки

При сборке поддерживаются переменные окружения см [lib/main.dart]:
`logLevel`: ключ, отвечающий за минимальный уровень логируемых эвентов
`debugInstruments`: ключ, отвечающий за флаг включающий дебаг-инструменты

#### Сборка Android

Перед сборкой необходимо сгенерировать зависимости, после чего можно выполнить команды:
`flutter build apk --debug` - для сборки debug-apk ресурса (будет собрано 4 ресурса, универсальная apk и 3 под каждую
платформу)
`flutter build apk --release` - для сборки release-apk ресурса (будет собрано 4 ресурса, универсальная apk и 3 под
каждую платформу)

Пример сборки appbundle:
`flutter build appbundle --release --dart-define=logLevel=nothing --dart-define=debugInstruments=false`

#### Сборка iOS

Вариант 1:
`flutter build ios` - собирается .app файл, этот файл можно переложить в папку Payload -архив-> Payload.zip -переименование-> Payload.ipa

Вариант 2:
`flutter build ipa --export-options-plist=ios/distribution/ExportOptions.plist` - собирается готовый ipa файл

- Важно, ipa файл для дебаг сборки не работает, если удается его собрать, то на телефоне он упдает с Memory Exception. 
Включить дебаг инструменты позволит --dart-define=debugInstruments=true
- Имя сборки можно менять аналогично андроиду, например: --build-name "1.0.5_ANDR-4258". Но все текстовые символы будут удалены, получится 1.0.54258
- При сборке очень часто возникают pod проблемы, можно зайти в /ios и вызвать:
```bash
pod repo update
pod update 
```
- Также часть проблем может быть решена при помощи очистки:
```bash
flutter clean
cd ios/
pod cache clean --all
xcodebuild clean
rm -rf .symlinks/
rm -rf Pods
rm -rf Podfile.lock
cd ..
```

- при запуске на реальном устройстве из студий надо добавить в игнор iproxy
sudo xattr -d com.apple.quarantine /YOUR_FLUTTER_PATH/bin/cache/artifacts/usbmuxd/iproxy

### Сгенерировать зависимости

```bash
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Отслеживать изменения зависимостей

```bash
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

### Сгенерировать ключи для easy_localization

```bash
flutter pub run easy_localization:generate --source-dir assets/translations -f keys -o locale_keys.g.dart
```

### Очистить проект

```bash
flutter clean
```

### Сгенерировать ресурсы
```bash
dart pub global activate flutter_gen
fluttergen
```

### Переименование приложения

```bash
flutter pub run flutter_rename_app
```
