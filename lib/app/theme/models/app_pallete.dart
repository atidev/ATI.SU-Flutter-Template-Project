import 'dart:ui';

import 'package:flutter/material.dart';

/// Цветовая палитра приложения
///
/// Это фиксация договоренностей с UX командой по использованию цветов в приложении
/// Такой подход хорошо зарекомендовал себя, т к как правило цвета, применяемые в приложении оговариваются
/// на этапе UX прототипирования, и потом почти не меняются
class AppPallete {
  static const Color blackA100 = Color(0xFF000000);
  static const Color blackA85 = Color(0xD9000000);
  static const Color blackA70 = Color(0xB2000000);
  static const Color blackA55 = Color(0x8C000000);
  static const Color blackA40 = Color(0x66000000);
  static const Color blackA25 = Color(0x40000000);
  static const Color blackA10 = Color(0x1A000000);

  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey850 = Color(0xFF303030);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFFFFFFFF);

  static const Color lightBlu500 = Color(0xFF03A9F4);
  static const Color lightBlue900 = Color(0xFF01579B);

  static const Color red500 = Color(0xFFF44336);
  static const Color green500 = Color(0xFF4CAF50);
  static const Color yellow500 = Color(0xFFFFEB3B);
}
