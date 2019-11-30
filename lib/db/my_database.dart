import 'package:aplicativooficial/db/dao/CaracteristicaDAO.dart';
import 'package:aplicativooficial/db/dao/DespesaDAO.dart';
import 'package:aplicativooficial/db/dao/InsumoDAO.dart';
import 'package:aplicativooficial/db/dao/ItemDAO.dart';
import 'package:aplicativooficial/db/dao/MaoDeObraDAO.dart';
import 'package:aplicativooficial/db/dao/OutroDAO.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'my_database.g.dart';

class Caracteristicas extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get tamanho => integer()();
  TextColumn get atividades => text().withLength(min:2, max: 8)();
  IntColumn get empregados => integer()();
  IntColumn get diaristas => integer()();
  TextColumn get estrutura => text().withLength(min: 10, max: 25)();
  TextColumn get equipamentos => text().withLength(min: 10, max: 25)();
}
class Itens extends Table{
IntColumn get id => integer().autoIncrement()();
TextColumn get nome => text().withLength(max: 10)();
IntColumn get vidautil =>  integer()();
IntColumn get percentual => integer()();
IntColumn get deprec3 => integer()();
IntColumn get deprec1 => integer()();
}

class MaoDeObras extends Table{
IntColumn get id => integer().autoIncrement()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class Insumos extends Table{
IntColumn get id => integer().autoIncrement()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class Despesas extends Table{
IntColumn get id => integer().autoIncrement()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class Outros extends Table{
IntColumn get id => integer().autoIncrement()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
@UseMoor(tables: [Caracteristicas, Itens, MaoDeObras, Insumos, Despesas, Outros])

class MyDataBase extends _$MyDataBase{
  static MyDataBase instance = MyDataBase._internal();
  CaracteristicaDAO caracteristicaDAO;
  DespesaDAO despesaDAO;
  InsumoDAO insumoDAO;
  ItemDAO itemDAO;
  MaoDeObraDAO maoDeObraDAO;
  OutroDAO outroDAO;
  MyDataBase._internal(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite')){
  CaracteristicaDAO(this);
  DespesaDAO(this);
  InsumoDAO(this);
  ItemDAO(this);
  MaoDeObraDAO(this);
  OutroDAO(this);
  }
  @override
  int get schemaVersion => 1;
}