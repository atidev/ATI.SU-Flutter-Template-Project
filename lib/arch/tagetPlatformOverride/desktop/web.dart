import 'package:flutter/foundation.dart';

void setTargetPlatformForDesktop({TargetPlatform? platform}) {
  debugDefaultTargetPlatformOverride = platform ?? TargetPlatform.android;
}
