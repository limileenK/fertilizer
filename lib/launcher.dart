import 'package:fertilizer/share.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fertilizer/history.dart';
import 'package:fertilizer/home.dart';
import 'package:fertilizer/calcu.dart';
import 'package:fertilizer/setting.dart';

class Launcher extends StatefulWidget {
  static const routeName = '/';

  @override
  State<StatefulWidget> createState() {
    return _LauncherState();
  }
}

class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  List<Widget> _pageWidget = <Widget>[
    HomePage(),
    Calcu(),
    Share(),
    Contect(),
  ];
  List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Image.asset('assets/land.png'),
      title: Text(
        'พื้นที่',
        style: GoogleFonts.prompt(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/calculator.png'),
      title: Text(
        'วัดค่า',
        style: GoogleFonts.prompt(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/link.png'),
      title: Text(
        'แชร์ปุ๋ย',
        style: GoogleFonts.prompt(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/user.png'),
      title: Text(
        'โปรไฟล์',
        style: GoogleFonts.prompt(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
