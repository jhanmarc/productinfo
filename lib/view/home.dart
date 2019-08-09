import 'package:flutter/material.dart';
import 'package:infoproducto/view/ranking.dart';
import 'package:infoproducto/view/scaner.dart';
import 'package:infoproducto/view/usuario.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  final _pageOptions = [
    ScanerPage(),
    RankingPage(),
    UsuarioPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Info Product',
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.lightBlue,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.aspect_ratio), title: Text('Scanner'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up), title: Text('Ranking')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Usuario')),
          ],
        ),
      ),
    );
  }
}
