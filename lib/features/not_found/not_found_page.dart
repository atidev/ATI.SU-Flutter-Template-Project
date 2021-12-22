import 'package:ati_su_flutter_template_project/generated/locale_export.dart';
import 'package:flutter/material.dart';

///Страница, показывающаяся, при не нахождении необходимой страницы в роутинге
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(LocaleKeys.not_found.tr()),
        ),
      ),
    );
  }
}
