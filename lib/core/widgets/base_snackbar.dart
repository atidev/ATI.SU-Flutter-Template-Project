import 'package:ati_su_flutter_template_project/app/theme/bloc/app_theme.dart';
import 'package:flutter/material.dart';

/// Базовая сущность для работы со снекбарами
class BaseSnackbar {
  /// Метод оторбажающий снекбар c возможностью указать
  /// текст кнопки и колбэка нажатия по кнопке (должны быть указаны и текст и колбэк нажатия)
  ///  [context] - контекст
  ///  [text] - текст основной
  ///  [actionLabel] - текст на кнопке (если указан)
  ///  [actionPressedCallback] - колбэк нажатия на кнопку
  static void show({
    required BuildContext context,
    required String text,
    String? actionLabel,
    VoidCallback? actionPressedCallback,
  }) {
    final colorTheme = AppTheme.of(context).colorTheme;

    final snackBarAction = (actionLabel != null && actionPressedCallback != null)
        ? SnackBarAction(
            textColor: colorTheme.accentVariant,
            label: actionLabel,
            onPressed: actionPressedCallback,
          )
        : null;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: colorTheme.onSurface,
      action: snackBarAction,
    ));
  }
}
