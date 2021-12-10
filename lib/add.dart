import 'package:fertilizer/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey[900],
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.arrow_back_ios_rounded)),
          title: Padding(
            padding: const EdgeInsets.only(left: 85, top: 40),
            child: Text(
              'เพิ่มพื้นที่',
              style: GoogleFonts.prompt(fontSize: 25),
            ),
          ),
        ),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.1 - 27,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'ชื่อพื้นที่'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'ช่วงชีวิต'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'ขนาดพื้น', suffixText: 'ไร่'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'จำนวนพืช', suffixText: 'ต้น'),
                      ),
                    ],
                  ),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
