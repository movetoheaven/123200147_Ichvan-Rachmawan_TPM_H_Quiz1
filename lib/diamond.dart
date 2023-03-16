import 'package:flutter/material.dart';
import 'dart:math';

class Diamond extends StatefulWidget {
  const Diamond({Key? key}) : super(key: key);
  _DiamondState createState() => _DiamondState();
}

class _DiamondState extends State<Diamond> {
  @override
  double d1 = 0;
  double d2 = 0;
  double small = 0;
  double big = 0;
  String result = '0';
  String res = '0';
  String count = '0';
  String unit = ' cm';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('KITE'), backgroundColor: Color(0xffff9a00)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Kite Area',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (txt) {
                      setState(() {
                        d1 = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Diagonal 1",
                        suffix: Text('cm'),
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (txt) {
                      setState(() {
                        d2 = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Diagonal 2",
                        suffix: Text('cm'),
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      count = (0.5 * d1 * d2).toString();
                      setState(() {
                        result = double.parse(count).toStringAsFixed(2) + unit;
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    child: Text('Count Area'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'Kite Around',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (txt) {
                      setState(() {
                        small = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Small Side",
                        suffix: Text('cm'),
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (txt) {
                      setState(() {
                        big = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Big Side",
                        suffix: Text('cm'),
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      count = (2 * (small + big)).toString();
                      setState(() {
                        res = double.parse(count).toStringAsFixed(2) + unit;
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    child: Text('Count the Around'),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'Result: ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      res,
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
