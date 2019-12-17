import 'package:ematerapp/db/my_database.dart';
class CalcProducao {
  double totalMaoDeObra, percentualMaoDeObra;
  double totalInsumo, percentualInsumo = 0;
  double totalDespesa, percentualDespesa = 0;
  double totalOutro, percentualOutro = 0;
  double totalCustosIndireto, percentualCustosIndireto = 0;
  double calcMaoDeObra(List<MaoDeObra> listaMaoDeObras) {
    double totalMaoDeObra, percentualMaoDeObra = 0;
    listaMaoDeObras.forEach((MaoDeObra listaMaoDeObra) {
      totalMaoDeObra += listaMaoDeObra.prince;
    });
    return totalMaoDeObra;
  }
  double calcInsumo(List<Insumo> listaInsumos) {
    listaInsumos.forEach((Insumo listaInsumo) {
      totalInsumo += listaInsumo.prince;
    });
    return totalInsumo;
  }
  double calcDespesa(List<Despesa> listaDespesas) {
    listaDespesas.forEach((Despesa listaDespesa) {
      totalDespesa += listaDespesa.prince.toDouble();
    });
    return totalDespesa;
  }
  double calcOutro(List<Outro> listaOutros) {
    listaOutros.forEach((Outro listaOutro) {
      totalOutro += listaOutro.prince;
    });
    return totalOutro;
  }
  double calcCustoIndireto(List<CustosIndireto> listaCustos) {
    listaCustos.forEach((CustosIndireto listaCusto) {
      totalCustosIndireto += (listaCusto.depreciacao +
          listaCusto.custooportc +
          listaCusto.custooportt);
    });
    return totalCustosIndireto;
  }  
}
class CalcItens {
  double dep1, dep3, resultadoItem = 0;
  double calcItens(List<Iten> listaItens) {
    listaItens.forEach((Iten listaIten) {
      dep3 = (listaIten.valororiginal - listaIten.valorresidual) /
          (listaIten.vidautil * listaIten.percentual);
      dep1 = dep3 / 3;
      resultadoItem += dep1;
    });
    return resultadoItem;
  }
}