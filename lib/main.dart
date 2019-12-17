import 'package:flutter/material.dart';
import 'Caracteristicas/CaracteristicasWidget.dart';
import 'Controledegastos/GraficosWidget/Graficos.dart';
import 'Controledegastos/listadegastos.dart';
import 'CustoDeProducao/CustoDeProducaoWidget.dart';
import 'DespesasAdminWidget/AddDespesas.dart';
import 'DespesasAdminWidget/DespesasAdminWidgets.dart';
import 'HomeWidget/login-page.dart';
import 'HomeWidget/splash.dart';
import 'InsumosWidget/AddInsumos.dart';
import 'InsumosWidget/InsumosWidget.dart';
import 'Items/AddItens/AddWidget.dart';
import 'Items/ItensWidget.dart';
import 'MaoDeObraWidget/AddMaoDeObra.dart';
import 'MaoDeObraWidget/MaoDeObraWidget.dart';
import 'OutrosWidget/AddOutros.dart';
import 'OutrosWidget/OutrosWidget.dart';

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
        new InformacoesPropriedade(buttonText: "Ok", description: "É um prazer termos um usuario como você, o aplicativo foi feito pensando cada detalhe para facilitar sua vida. Esperamos que goste do aplicativo e faça bom proveito. Atenciosamente os desenvolvedores ❤", title: "Agrocontábil"),
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