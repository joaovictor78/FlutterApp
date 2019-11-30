import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
         
      body: Container(
      
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
          width: 100,
          height: 100,
          child: Image.asset("assets/logo.jpg"),
        ),
        SizedBox(
           height: 20,
        ),

        Text(
         "Agrocontabil",
           style: TextStyle(
           color: Colors.white,
           fontSize: 32,
          
         ),
         textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50,
        ),
        Container(
               height: 60,
               alignment: Alignment.centerLeft,
               decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: [
                 Colors.indigo[700],
                Colors.indigo[300],
                ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
               ),
               child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                    Text("Iniciar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    ),
                    Icon(Icons.keyboard_arrow_right,
                    color: Colors.white,),
                    ]
                    
                  ), onPressed: () {
                     
                    Navigator.pushNamed(context, "/CaracteristicasWidget");
              
                  },
                 
               ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
           child: SizedBox(
          width: 150,
          height: 100,
          child: Image.asset("assets/loading2.gif"),
           ),
        ),
          ],
        ), 
      ),
      
    );
  }
}