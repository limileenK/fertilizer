import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  _ShareState createState() => _ShareState();
}

enum SingingCharacter { lafayette, jefferson }

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Text(
          'แชร์ปุ๋ย',
          style: GoogleFonts.prompt(color: Colors.black),
        )),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
