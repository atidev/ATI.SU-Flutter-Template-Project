import 'package:ati_su_flutter_template_project/app/theme/models/app_pallete.dart';
import 'package:flutter/material.dart';

/// Абстракция для поставки базовых цветовых токенов в приложении
///
/// Абстракция фиксирует договоренность c UX командой по цветовым псевдонимам
/// Обратите внимание, именование отражает логическую суть применения цвета
abstract class AppColorTheme {
  //============================== Main Colors ==============================
  Brightness get brightness;

  Color get accent;

  Color get accentVariant;

  Color get onAccent;

  Color get secondaryAccent;

  Color get secondaryAccentVariant;

  Color get onSecondary;

  //============================== Typography Colors ==============================
  Color get textPrimary;

  Color get textSecondary;

  Color get textTertiary;

  Color get textOnAccent;

  //============================== Divider Colors ==============================
  Color get dividerPrimary;

  //============================== Background Colors ==============================
  Color get backgroundSurface;

  Color get backgroundWindowBackground;

  Color get onSurface;

  Color get onBackground;

  //============================== Icon Colors ==============================
  Color get iconPrimary;

  Color get iconSecondary;

  Color get iconTertiary;

  Color get iconSystem;

  Color get iconOnAccent;

  //============================== Overlay Colors ==============================
  Color get overlayDefault;

  //============================== Stroke Colors ==============================
  Color get strokePrimary;

  Color get strokeSuccess;

  Color get strokeAttention;

  Color get strokeError;
}

/// Реализация светлой цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  //============================== Customization color tokens ==============================
  @override
  Color get accent => AppPallete.lightBlu500;
  @override
  Color get accentVariant => AppPallete.lightBlue900;
  @override
  Color get onAccent => AppPallete.white;

  @override
  Color get secondaryAccent => accent;
  @override
  Color get secondaryAccentVariant => accentVariant;
  @override
  Color get onSecondary => onAccent;

  //============================== Typography color tokens ==============================
  @override
  Color get textPrimary => onBackground;
  @override
  Color get textSecondary => AppPallete.blackA70;
  @override
  Color get textTertiary => AppPallete.blackA40;
  @override
  Color get textOnAccent => onAccent;

  //============================== Divider color tokens ==============================
  @override
  Color get dividerPrimary => AppPallete.blackA10;

  //============================== Background color tokens ==============================
  @override
  Color get backgroundSurface => AppPallete.white;
  @override
  Color get backgroundWindowBackground => AppPallete.grey200;
  @override
  Color get onSurface => AppPallete.blackA100;
  @override
  Color get onBackground => AppPallete.blackA85;

  //============================== Icon color tokens ==============================
  @override
  Color get iconPrimary => onBackground;
  @override
  Color get iconSecondary => AppPallete.blackA55;
  @override
  Color get iconTertiary => AppPallete.blackA25;
  @override
  Color get iconSystem => AppPallete.blackA55;
  @override
  Color get iconOnAccent => onAccent;

  //============================== Overlay color tokens ==============================
  @override
  Color get overlayDefault => AppPallete.blackA55;

  //============================== Stroke color tokens ==============================
  @override
  Color get strokePrimary => AppPallete.blackA10;
  @override
  Color get strokeSuccess => AppPallete.green500;
  @override
  Color get strokeAttention => AppPallete.yellow500;
  @override
  Color get strokeError => AppPallete.red500;

  const LightColorTheme() : super();
}

/// Реализация темной цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class DarkRedColorTheme extends LightColorTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get accent => AppPallete.red500;
  @override
  Color get accentVariant => AppPallete.red500;

  @override
  Color get backgroundSurface => AppPallete.grey850;
  @override
  Color get backgroundWindowBackground => AppPallete.blackA100;
  @override
  Color get onSurface => AppPallete.white;
  @override
  Color get onBackground => AppPallete.grey100;

  const DarkRedColorTheme() : super();
}
