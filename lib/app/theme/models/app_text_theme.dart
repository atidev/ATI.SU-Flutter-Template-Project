import 'package:flutter/material.dart';

/// Абстракция для базовых текстовых стилей в приложении
///
/// Абстракция фиксирует договоренность по вариантам типографики с командой UX дизайна
/// Такой подход позволяет зафиксировать UX договоренности, что уменьшает количество багов, связанных с шрифтами
abstract class AppTextTheme {
  TextStyle get body1Medium;

  TextStyle get body1Regular;

  TextStyle get buttonMedium;

  TextStyle get caption1Medium;

  TextStyle get caption1Regular;

  TextStyle get caption2Medium;

  TextStyle get caption2Regular;

  TextStyle get caption3Medium;

  TextStyle get caption3Regular;

  TextStyle get caption4Bold;

  TextStyle get caption4Medium;

  TextStyle get caption4Regular;

  TextStyle get h5Bold;

  TextStyle get h5Medium;

  TextStyle get h5Regular;

  TextStyle get h6Bold;

  TextStyle get h6Medium;

  TextStyle get h6Regular;

  TextStyle get subtitle2Bold;

  TextStyle get subtitle2Medium;

  TextStyle get subtitle2Regular;
}

/// Реализация договоренностей по типографике
///
/// В нашей команде данная реализация отражает шаблон типографики в Figma
/// Такой подход позволяет жить шрифтам и в Figma и во Flutter в едином контексте
class BaseTextTheme implements AppTextTheme {
  @override
  TextStyle get h5Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 24,
        height: 28 / 24,
      );

  @override
  TextStyle get h5Bold => h5Medium.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle get h5Regular => h5Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get h6Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 20,
        height: 24 / 20,
      );

  @override
  TextStyle get h6Bold => h6Medium.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle get h6Regular => h6Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get body1Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 16,
        height: 20 / 16,
        letterSpacing: 0.1,
      );

  @override
  TextStyle get body1Regular => body1Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get buttonMedium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 16,
        height: 20 / 16,
        letterSpacing: 0.1,
      );

  @override
  TextStyle get subtitle2Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 18 / 14,
        letterSpacing: 0.2,
      );

  @override
  TextStyle get subtitle2Bold => subtitle2Medium.copyWith(fontWeight: FontWeight.w700);

  @override
  TextStyle get subtitle2Regular => subtitle2Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get caption1Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 18 / 14,
        letterSpacing: 0.2,
      );

  @override
  TextStyle get caption1Regular => caption1Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get caption2Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 18 / 14,
        letterSpacing: 0.2,
      );

  @override
  TextStyle get caption2Regular => caption2Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get caption3Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 18 / 14,
        letterSpacing: 0.2,
      );

  @override
  TextStyle get caption3Regular => caption3Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get caption4Medium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 18 / 14,
        letterSpacing: 0.2,
      );

  @override
  TextStyle get caption4Regular => caption4Medium.copyWith(fontWeight: FontWeight.w400);

  @override
  TextStyle get caption4Bold => caption4Medium.copyWith(fontWeight: FontWeight.w700);
}
