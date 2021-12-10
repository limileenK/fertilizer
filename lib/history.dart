import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calcu.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            "ประวัติ",
            style:
                GoogleFonts.prompt(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [],
        ));
  }
}
