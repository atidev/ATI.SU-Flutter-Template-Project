import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

/// Сущность для описания вычислений, которые могут идти двумя путями [L] или [R]
/// Классически используется для обработки ошибок, обычная левая часть выступает в качестве ошибки, а правая в качестве результата
@freezed
class Either<L, R> with _$Either<L, R> {
  bool get isLeft => this is _EitherLeft<L, R>;

  bool get isRight => this is _EitherRight<L, R>;

  /// Представляет левую часть класса [Either], которая по соглашению является "Ошибкой"
  L get left => (this as _EitherLeft<L, R>).left;

  /// Представляет правую часть класса [Either], которая по соглашению является "Успехом"
  R get right => (this as _EitherRight<L, R>).right;

  const Either._();

  const factory Either.left(L left) = _EitherLeft;

  const factory Either.right(R right) = _EitherRight;
}
