import 'package:flutter/material.dart';
import 'package:helloworld/diamond.dart';
import 'package:helloworld/triangle.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    int isButtonSelect = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Color(0xffff9a00),
      ),
      body: ListView(padding: const EdgeInsets.all(8), children: [
        SizedBox(height: 30.0),
        Text("PROFILE",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xffff9a00),
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 20.0),
        Container(
          height: 500,
          child: Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(100),
                        // child: Image.asset('assets/image/foto.jpeg', height: 250,width:250,),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("ICHVAN RACHMAWAN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, color: Color(0xffff9a00))),
                    Text("123200147",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, color: Color(0xffff9a00))),
                    Text("TPM IF-H",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, color: Color(0xffff9a00))),
                    Text("NONTON FILM/SERIES",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, color: Color(0xffff9a00))),
                    SizedBox(height: 48.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 1)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Triangle()));
          if (value == 2)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Diamond()));
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xffff9a00)),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_up, color: Color(0xffff9a00)),
            label: 'Triangle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond, color: Color(0xffff9a00)),
            label: 'Kite',
          ),
        ],
      ),
    );
  }
}
