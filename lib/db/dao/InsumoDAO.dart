import 'package:moor_flutter/moor_flutter.dart';
import '../my_database.dart';
part 'InsumoDAO.g.dart';
@UseDao(tables: [Insumos])
class InsumoDAO extends DatabaseAccessor<MyDataBase> with _$InsumoDAOMixin{
  Stream<List<Insumo>>getAll(){
  return select(insumos).watch();
}
Future addInsumo(Insumo entity){ //adiciona
  return into(insumos).insert(entity);
}
Future updateInsumo(Insumo entity){ //update
  return update(insumos).replace(entity);
}
Future removeInsumo(id){ //remove
  return (delete(insumos)..where((cat) => cat.id.equals (id)) ).go();
}
  InsumoDAO(MyDataBase db) : super(db);


}