import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:infoproducto/model/envase.dart';
import 'dart:async';

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

final productReference = FirebaseDatabase.instance.reference().child('envases');

class _RankingPageState extends State<RankingPage> {

  List<Envase> items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = new List();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ranking"),
      ),

    );
  }
}