import 'package:aplicativooficial/db/my_database.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'DespesaDAO.g.dart';
@UseDao(tables: [Despesas])
class DespesaDAO extends DatabaseAccessor<MyDataBase> with _$DespesaDAOMixin{
Stream<List<Despesa>> listAll(){
  return select(despesas).watch();
}
Future addDespesa(Despesa entity){ //adiciona
  return into(despesas).insert(entity);
}
Future updateDespesa(Despesa entity){ //update
  return update(despesas).replace(entity);
}
Future removeDespesas(id){ //remove
  return (delete(despesas)..where((cat) => cat.id.equals (id)) ).go();
}
  DespesaDAO(MyDataBase db) : super(db);


}