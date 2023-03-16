import 'package:flutter/material.dart';
import 'dart:math';

class Triangle extends StatefulWidget {
  const Triangle({Key? key}) : super(key: key);
  _TriangleState createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  @override
  double als = 0;
  double ti = 0;
  String result = '0';
  String res = '0';
  String count = '0';
  String unit = ' cm';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('TRIANGLE'), backgroundColor: Color(0xffff9a00)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: <Widget>[
                Text(
                  'Triangle Area',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      als = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Base",
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(color: Colors.pinkAccent),
                  onChanged: (txt) {
                    setState(() {
                      ti = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Height",
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    count = (0.5 * als * ti).toString();
                    setState(() {
                      result = double.parse(count).toStringAsFixed(2) + unit;
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                  child: Text('Count the Area'),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    count =
                        (sqrt(pow(als, 2) + pow(ti, 2)) + als + ti).toString();
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
                    'Area : ',
                    style: TextStyle(fontSize: 20),
                  ),
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
                    'Around : ',
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
    );
  }
}
