import 'package:moor_flutter/moor_flutter.dart';

import 'CustoIndiretoDAO.dart';
import 'dao/CaracteristicaDAO.dart';
import 'dao/DespesaDAO.dart';
import 'dao/InsumoDAO.dart';
import 'dao/ItemDAO.dart';
import 'dao/MaoDeObraDAO.dart';
import 'dao/OutroDAO.dart';
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
TextColumn get nome => text().withLength(max: 30)();
IntColumn get valororiginal => integer()();
IntColumn get valorresidual => integer()();
IntColumn get vidautil =>  integer()();
IntColumn get percentual => integer()();
IntColumn get deprec3 => integer()();
IntColumn get deprec1 => integer()();
}
class MaoDeObras extends Table{
IntColumn get id => integer().autoIncrement()();
TextColumn get nome =>  text()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class Insumos extends Table{
IntColumn get id => integer().autoIncrement()();
TextColumn get nome =>  text()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class Despesas extends Table{
IntColumn get id => integer().autoIncrement()();
TextColumn get nome =>  text()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class Outros extends Table{
IntColumn get id => integer().autoIncrement()();
TextColumn get nome =>  text()();
IntColumn get prince => integer()();
TextColumn get ano => text()();
}
class CustosIndiretos extends Table{
IntColumn get id => integer().autoIncrement()();
IntColumn get depreciacao => integer()();
IntColumn get custooportt => integer()();
IntColumn get custooportc => integer()();
}
@UseMoor(tables: [Caracteristicas, Itens, MaoDeObras, Insumos, Despesas, Outros, CustosIndiretos])

class MyDataBase extends _$MyDataBase{
  static MyDataBase instance = MyDataBase._internal();
  CaracteristicaDAO caracteristicaDAO;
  DespesaDAO despesaDAO;
  InsumoDAO insumoDAO;
  ItemDAO itemDAO;
  MaoDeObraDAO maoDeObraDAO;
  OutroDAO outroDAO;
  CustoIndiretoDAO custoIndiretoDAO;
  MyDataBase._internal(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite')){
  caracteristicaDAO = CaracteristicaDAO(this);
  despesaDAO = DespesaDAO(this);
  insumoDAO = InsumoDAO(this);
  itemDAO = ItemDAO(this);
  maoDeObraDAO = MaoDeObraDAO(this);
  outroDAO = OutroDAO(this);
  custoIndiretoDAO = CustoIndiretoDAO(this);
  }
  @override
  int get schemaVersion => 1;
}