import 'package:drift/drift.dart';
import 'package:drift/web.dart';

QueryExecutor createQueryExecutor({
  bool logStatements = false,
}) {
  final webDatabase = WebDatabase('db', logStatements: logStatements);
  return webDatabase;
}
