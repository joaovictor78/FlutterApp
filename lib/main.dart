import 'package:aplicativooficial/Caracteristicas/AddItens/AddWidget.dart';
import 'package:aplicativooficial/Caracteristicas/CaracteristicasWidget.dart';
import 'package:aplicativooficial/Controledegastos/listadegastos.dart';
import 'package:aplicativooficial/CustoDeProducao/CustoDeProducaoWidget.dart';
import 'package:aplicativooficial/DespesasAdminWidget/AddDespesas.dart';
import 'package:aplicativooficial/HomeWidget/login-page.dart';
import 'package:aplicativooficial/HomeWidget/splash.dart';
import 'package:aplicativooficial/InsumosWidget/AddInsumos.dart';
import 'package:aplicativooficial/InsumosWidget/InsumosWidget.dart';
import 'package:aplicativooficial/Items/ItensWidget.dart';
import 'package:aplicativooficial/MaoDeObraWidget/AddMaoDeObra.dart';
import 'package:aplicativooficial/OutrosWidget/AddOutros.dart';
import 'package:aplicativooficial/OutrosWidget/OutrosWidget.dart';
import 'package:flutter/material.dart';
import 'Controledegastos/GraficosWidget/Graficos.dart';
import 'DespesasAdminWidget/DespesasAdminWidgets.dart';
import 'MaoDeObraWidget/MaoDeObraWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
        primarySwatch: Colors.green,
     ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context)=>
        new LoginPage(),
        '/CaracteristicasWidget': (BuildContext context) =>
        new CaracteristicasWidget(),
         '/ItensWidget': (BuildContext context) =>
        new ItensWidget(),
           '/AddWidget': (BuildContext context) =>
        new AddItens(),
          '/CustoDeProducaoWidget': (BuildContext context) =>
        new CustoDeProducaoWidget(),
         '/MaoDeObraWidget': (BuildContext context) =>
        new MaoDeObraWidget(),
         '/AddMaoDeObra': (BuildContext context) =>
        new AddMaoDeObra(),
        '/InsumosWidget': (BuildContext context) =>
        new InsumosWidget(),
        '/AddInsumos': (BuildContext context) =>
        new AddInsumos(),
         '/DespesasAdminWidgets': (BuildContext context) =>
        new DespesasAdminWidgets(),
         '/AddDespesas': (BuildContext context) =>
        new AddDespesas(),
         '/OutrosWidget': (BuildContext context) =>
        new OutrosWidgets(),
          '/AddOutros': (BuildContext context) =>
        new AddOutros(),
         '/ControleDeGastosWidget': (BuildContext context) =>
        new HomePage(),
         '/splash': (BuildContext context) =>
        new Splash(),
        '/listadegastos': (BuildContext context) =>
        new ListaDeGastos(),
      },
       initialRoute: '/splash',
    );
  }
}