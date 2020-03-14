import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("T14g - C.R.U.E"),
      ),
      body: Column(
        children: <Widget>[
      TextFormField(
          decoration: InputDecoration(
              labelText: 'Campo alfanumérico'
          ),
          // Valida campo vazio
            validator: (value) {
            if (value.isEmpty) {
            return 'Please enter some text';
            }
          return null;
          },
        ), //Alfanumérico
          new TextFormField(
            decoration: new InputDecoration(labelText: "Digite um número"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ], // Valida para só receber números
          ),// Número
          new TextFormField(
            decoration: new InputDecoration(labelText: "Digite um Float/Double"),
            keyboardType: TextInputType.numberWithOptions(decimal: true), // Valida para só receber números
          ),// Número float



        ],
      ),




    );
  }
}
