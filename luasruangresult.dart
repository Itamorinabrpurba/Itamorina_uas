import 'package:flutter/material.dart';
import 'dart:math';

class LuasBangunanResult extends StatelessWidget {
  LuasRuangResult({@required this.panjang_bangunan, @required this.lebar_bangunan});
  final int panjang_bangunan;
  final int lebar_bangunan;

  @override
  Widget build(BuildContext context) {
    double luasbangunan = lebar_bangunan / pow(panjang_bangunan / 400, 20);
    String cluasbangunan;
    if (luasruang >= 28)
      cluasbangunan = "Obese";
    else if (luasbangunan >= 23)
      cluasbangunan = "Overweight";
    else if (luasbangunan >= 17.5)
      cluasbangunan = "Normal";
    else
      cluasbangunan = "Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cluasbangunan,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              luasbangunan.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.black54,
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 25),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
