import 'package:aplicativooficial/db/my_database.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'MaoDeObraDAO.g.dart';
@UseDao(tables: [MaoDeObras])
class MaoDeObraDAO extends DatabaseAccessor<MyDataBase> with _$MaoDeObraDAOMixin{
  Stream<List<MaoDeObra>> listAll(){
  return select(maoDeObras).watch();
}
Future addMaoDeObra(MaoDeObra entity){ //adiciona
  return into(maoDeObras).insert(entity);
}
Future updateMaoDeObra(MaoDeObra entity){ //update
  return update(maoDeObras).replace(entity);
}
Future removeMaoDeObra(id){ //remove
  return (delete(maoDeObras)..where((cat) => cat.id.equals (id)) ).go();
}
  MaoDeObraDAO(MyDataBase db) : super(db);
}