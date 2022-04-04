import 'package:flutter/material.dart';
import '../controller/cyber_controller.dart';
import '../controller/exclusive_weapon_controller.dart';
import '../controller/top_battle_controller.dart';
import '../view/about_all_wars.dart';

import 'all_wars.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  //int _currentTab = 0;

  final List _icons = [
    '1700',
    '1800',
    '1900',
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AllWars()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 80.0,
        height: 40.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.00)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 4.00,
              spreadRadius: 2.00,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.yellow,
              Colors.white,
            ],
          ),
        ),
        child: Text(
          '${_icons[index]}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.00,
            fontFamily: 'Trajan Pro',
            fontWeight: FontWeight.bold,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: <Widget>[
            Text(
              'NO TO WAR!',
              style: TextStyle(
                  fontSize: 55.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Trajan Pro',
                  foreground: Paint()
                    ..color = Colors.red
                    ..strokeWidth = 2.0
                    ..style = PaintingStyle.stroke),
            ),
            const SizedBox(
              height: 20.00,
            ),
            Text(
              'Let\'s Learn From the Bloody War History. Stop War Now!',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Trajan Pro',
                  foreground: Paint()
                    ..color = Colors.blue
                    ..strokeWidth = 2.0
                    ..style = PaintingStyle.stroke),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcons(map.key))
                  .toList(),
            ),
            const SizedBox(
              height: 20.00,
            ),
            const TopBattleController(),
            const SizedBox(
              height: 20.00,
            ),
            const WeaponController(),
            const SizedBox(
              height: 20.00,
            ),
            const CyberController(),
          ],
        ),
      ),
    );
  }
}

/**
 * bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.00,
              backgroundColor: Colors.lightBlueAccent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.00,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_searching,
              size: 30.00,
            ),
            label: '',
          ),
        ],
      ),
 */