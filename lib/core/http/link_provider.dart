import 'package:ati_su_flutter_template_project/const/http_const.dart';
import 'package:injectable/injectable.dart';

/// Сущность для поставки url в разные места приложения
@singleton
class LinkProvider {
  String get timeHost => '${HttpConst.httpSchema}://worldclockapi.com';
}
