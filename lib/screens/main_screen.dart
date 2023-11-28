import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uts_mobile2_ariksaputramisnanto_tif221pa/screens/date_screen.dart';
import 'package:uts_mobile2_ariksaputramisnanto_tif221pa/screens/grid.dart';
import 'package:uts_mobile2_ariksaputramisnanto_tif221pa/screens/homepage.dart';
import 'package:uts_mobile2_ariksaputramisnanto_tif221pa/screens/list_screen.dart';
import 'package:uts_mobile2_ariksaputramisnanto_tif221pa/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _index = 0;
  final List<Widget> _screens = [
    const HomePage(),
    const Grid(),
    const ListScreen(),
    const DateScreen(),
    const ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List KPOP'),
        backgroundColor: Color(0xFF27D128),
      ),
      body: _screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _index,
        height: 60,
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.photo_album, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.date_range, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.lightBlue,
        backgroundColor: Color(0xFF27D128),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}