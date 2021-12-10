import 'package:fertilizer/history.dart';
import 'package:fertilizer/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class name extends StatelessWidget {
  // const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Calcu(),
    );
  }
}

class Calcu extends StatefulWidget {
  const Calcu({Key? key}) : super(key: key);

  @override
  _CalcuState createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          title: Center(
            child: Text(
              'สวนยางพารา',
              style: GoogleFonts.kanit(fontSize: 22, color: Colors.white),
            ),
          ),
          actions: [
            Center(
              child: Material(
                color: Colors.blueGrey[900],
                child: Center(
                  child: Ink(
                    child: IconButton(
                      icon: Image.asset('assets/editing.png'),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
          ]),
      body: Column(
        children: [
          Container(
            height: size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text('พืช: ยางพารา ',
                          style: GoogleFonts.prompt(
                              fontSize: 16, color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('ขนาดพื้นที่ 16 ไร่ ',
                          style: GoogleFonts.prompt(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.teal[300],
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 3.5, color: Colors.white),
                    ),
                    child: Center(
                        child: Text('วัดค่า NPK',
                            style: GoogleFonts.prompt(
                                fontSize: 20, color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 10),
                              child: Text('ช่วงชีวิต ',
                                  style: GoogleFonts.prompt(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: Text('อายุ 2-6 เดือน ',
                                  style: GoogleFonts.prompt(
                                      fontSize: 14, color: Colors.black)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Text(
                            '19ส.ค.64',
                            style: GoogleFonts.prompt(
                                fontSize: 12, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 70, left: 20, right: 20),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('ค่า NPK ในดิน',
                                  style: GoogleFonts.prompt(
                                      fontSize: 15, color: Colors.white)),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2, color: Colors.teal),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35, top: 8),
                                      child: Text('N',
                                          style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2, color: Colors.teal),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35, top: 8),
                                      child: Text('P',
                                          style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2, color: Colors.teal),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35, top: 8),
                                      child: Text('K',
                                          style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        height: size.height * 0.2,
                        width: 420,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[900],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 20,
                      right: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2.5, color: Colors.teal),
                          ),
                          child: Center(
                            child: InkWell(
                              child: Text(
                                'รายละเอียดเพิ่มเติม',
                                style: GoogleFonts.prompt(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
