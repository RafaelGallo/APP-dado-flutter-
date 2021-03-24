//Clarice Dantas RA 1902815
//Leandro Soares RA 1901845
//Rafael Gallo RA 1901885
//Rodrigo Santiago RA 1902375
//Yago Rodrigues RA 1902362

import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
  var _frases = [
    "DEU UM",
    "DEU DOIS",
    "DEU TRÊS",
    "DEU QUATRO",
    "DEU CINCO",
    "DEU SEIS",
  ];
  var _fraseGerada = "QUAL SERÁ?";
  void _gerarFrase(){
    // 0, 1 , 2, 3
    var numeroSorteado = Random().nextInt( _frases.length );
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("QUAL VALOR DO DADO"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("img/H1.jpg"),
                      Text(
                        "pressione para jogar o dado",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                      RaisedButton(
                        child: Text(
                          "Pressione",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        color: Colors.blue,
                        onPressed: _gerarFrase,),
                      Text(
                        _fraseGerada,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.green
                        ),
                      ),
                    ])))
    );
  }}