import 'package:ematerapp/db/my_database.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'CustoIndiretoDAO.g.dart';
@UseDao(tables:[CustosIndireto])
class CustoIndiretoDAO extends DatabaseAccessor<MyDataBase> with _$CustoIndiretoDAOMixin{
  Stream<List<CustosIndireto>> listAll(){
  return select(custosIndiretos).watch();
}
Future addCusto(CustosIndireto entity){ //adiciona
  return into(custosIndiretos).insert(entity);
}
Future updateCusto(CustosIndireto entity){ //update
  return update(custosIndiretos).replace(entity);
}
Future removeCusto(id){ //remove
  return (delete(custosIndiretos)..where((cat) => cat.id.equals (id)) ).go();
}
  CustoIndiretoDAO(MyDataBase db) : super(db);
}