import 'package:ati_su_flutter_template_project/app/platfromType/app_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Виджет с адаптивным элементом загрузки с в зависимости от [AppPlatform]
class AdaptiveCircularProgressWidget extends StatelessWidget {
  const AdaptiveCircularProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (AppPlatforms.get()) {
      case AppPlatform.web:
        return const CircularProgressIndicator();
      case AppPlatform.ios:
        return const CupertinoActivityIndicator();
      case AppPlatform.android:
        return const CircularProgressIndicator();
    }
  }
}
