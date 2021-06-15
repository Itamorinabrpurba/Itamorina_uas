import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'luasruangresult.dart';

class InputLuasRuang extends StatefulWidget {
  @override
  _InputLuasRuangState createState() => _InputLuasRuangState();
}

class _InputLuasRuangState extends State<InputLuasRuang> {
  int panjang = 0;
  int lebar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        //backgroundColor: Colors.blue[900],
        centerTitle: true,
        leading: Icon(
          Icons.favorite,
          color: Colors.pink,
        ),
        title: Text('LUAS RUANG'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('m^2'),
                            filled: true,
                            hintText: 'panjang'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('m^2'),
                            filled: true,
                            hintText: 'lebar'),
                      ),
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => _LuasTanahResult(
                            panjang_ruang: panjang, lebar_ruang: lebar)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.green,
                // textColor: Colors.black,
                child: Text(
                  'HITUNGLUASRUANG',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.black54,
          alignment: Alignment.center,
          child: Text(
            'PENGEMBANG : Ita Morina Br Purba ',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}
