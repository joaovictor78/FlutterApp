import 'package:aplicativooficial/db/my_database.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'ItemDAO.g.dart';
@UseDao(tables: [Itens])
class ItemDAO extends DatabaseAccessor<MyDataBase> with _$ItemDAOMixin{
  Stream<List<Iten>> listAll(){
  return select(itens).watch();
}
Future addItem(Iten entity){ //adiciona
  return into(itens).insert(entity);
}
Future updateIten(Iten entity){ //update
  return update(itens).replace(entity);
}
Future removeIten(id){ //remove
  return (delete(itens)..where((cat) => cat.id.equals (id)) ).go();
}
  ItemDAO(MyDataBase db) : super(db);
}