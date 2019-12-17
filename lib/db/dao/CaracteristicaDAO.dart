import 'package:moor_flutter/moor_flutter.dart';
import '../my_database.dart';
part 'CaracteristicaDAO.g.dart';
@UseDao(tables: [Caracteristicas])
class CaracteristicaDAO extends DatabaseAccessor<MyDataBase> with _$CaracteristicaDAOMixin{
Stream<List<Caracteristica>> listAll(){
  return select(caracteristicas).watch();
}
Future addCaracteristica(Caracteristica entity){ //adiciona
  return into(caracteristicas).insert(entity);
}
Future updateCaracteristica(Caracteristica entity){ //update
  return update(caracteristicas).replace(entity);
}
Future removeCaracteristica(id){ //remove
  return (delete(caracteristicas)..where((cat) => cat.id.equals (id)) ).go();
}
CaracteristicaDAO(MyDataBase db) : super(db);
} 
