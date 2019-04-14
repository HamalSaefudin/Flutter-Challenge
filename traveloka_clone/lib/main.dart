import 'package:flutter/material.dart';
import 'package:traveloka_clone/pages/awal.dart';
import 'package:traveloka_clone/pages/simpan.dart';
import 'package:traveloka_clone/pages/inbox.dart';
import 'package:traveloka_clone/pages/pesanan.dart';
import 'package:traveloka_clone/pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TRAVELOKA CLONE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Traveloka Clone"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [Awal(), Simpan(), Pesanan(), Inbox(), Profile()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("awal"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.save),
            title: new Text("simpan"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            title: Text("pesanan"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.inbox),
            title: new Text("inbox"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("profile"),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
