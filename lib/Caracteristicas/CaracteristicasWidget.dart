import 'package:ematerapp/widgets_componets/BodyCaracteristicasWidget.dart';
import 'package:flutter/material.dart';

import 'ApresentacaoDialog/apresentacaodialog.dart';
class InformacoesPropriedade extends StatefulWidget {
  final String title, description, buttonText;
  final Image image;
  InformacoesPropriedade({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });
  @override
  _InformacoesPropriedadeState createState() => _InformacoesPropriedadeState();
}
class _InformacoesPropriedadeState extends State<InformacoesPropriedade> {
  bool i = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Infraestrutura da propriedade",
            style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children:[
         BodyCaracteristicasWidget(),
         ApresentacaoDialog(title: "Agrocontábil", description: "Aqui entra a descrição", buttonText: "Ok",
         ),
   ],
      ),
    );
  }
  dialogContent(BuildContext context) {
    return  Container(
          padding: EdgeInsets.only(
            top: Consts.avatarRadius + Consts.padding,
            bottom: Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
          ),
          margin: EdgeInsets.only(top: Consts.avatarRadius),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                widget.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(widget.buttonText),
                ),
              ),
              Positioned(
          left: Consts.padding,
          right: Consts.padding,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: Consts.avatarRadius,
          ),
        ),
            ],
          ),
    );
  }
}
class Consts {
  Consts._();
  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}   