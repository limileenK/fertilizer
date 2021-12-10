import 'package:fertilizer/add.dart';
import 'package:fertilizer/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calcu.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

Widget para() {
  return Image.asset('assets/para.png');
}

Widget mangosteen() {
  return Image.asset('assets/mangosteen.png');
}

class _HomePageState extends State<HomePage> {
  // Method

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey[50],
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  'พื้นที่',
                  style: GoogleFonts.kanit(fontSize: 18, color: Colors.black),
                ),
              ),
              actions: [
                Center(
                  child: Ink(
                    child: IconButton(
                      icon: const Icon(Icons.add_circle_outline_sharp),
                      color: Colors.black45,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Add()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      TextField(
                        maxLengthEnforced: true,
                        style: GoogleFonts.kanit(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 19, right: 50, bottom: 0),
                            border: InputBorder.none,
                            hintText: 'ค้นหาที่ดิน',
                            hintStyle: GoogleFonts.kanit(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text('สวนยางพารา',
                                  style: GoogleFonts.kanit(
                                      fontSize: 18, color: Colors.black)),
                            ),
                            subtitle: Text('พืช: ยางพารา\nช่วงชีวิต: ออกดอก ',
                                style: GoogleFonts.kanit(
                                    fontSize: 13, color: Colors.black)),
                            trailing: para(),
                            isThreeLine: true,
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text('สวนมังคุด',
                                  style: GoogleFonts.kanit(
                                      fontSize: 18, color: Colors.black)),
                            ),
                            subtitle: Text('พืช: มังคุด\nช่วงชีวิต: ออกดอก ',
                                style: GoogleFonts.kanit(
                                    fontSize: 13, color: Colors.black)),
                            trailing: mangosteen(),
                            isThreeLine: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
