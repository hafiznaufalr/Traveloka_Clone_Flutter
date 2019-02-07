import 'package:flutter/material.dart';
import 'package:traveloka_clone/pages/awal.dart';
import 'package:traveloka_clone/pages/inbox.dart';
import 'package:traveloka_clone/pages/pesanan.dart';
import 'package:traveloka_clone/pages/pofile.dart';
import 'package:traveloka_clone/pages/simpan.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter demo ',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final _layoutPage = [
    Awal(),
    Simpan(),
    Pesanan(),
    Inbox(),
    Profile()

  ];

  void _onTabItem(int index){
    setState(() {
          _selectedIndex =  index;
        });
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
     
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text('Simpan')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style),
            title: Text('Pesanan')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('Inbox')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),

    );
  }
}
