import 'package:aplicativooficial/db/my_database.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'OutroDAO.g.dart';
@UseDao(tables:[Outros])
class OutroDAO extends DatabaseAccessor<MyDataBase> with _$OutroDAOMixin{
  Stream<List<Outro>> listAll(){
  return select(outros).watch();
}
Future addOutro(Outro entity){ //adiciona
  return into(outros).insert(entity);
}
Future updateOutro(Outro entity){ //update
  return update(outros).replace(entity);
}
Future removeOutro(id){ //remove
  return (delete(outros)..where((cat) => cat.id.equals (id)) ).go();
}
  OutroDAO(MyDataBase db) : super(db);
}