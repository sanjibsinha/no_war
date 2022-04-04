import 'package:flutter/material.dart';
import 'eighteen_wars/eighteen_home.dart';
import 'seventeen_wars/seventeen_home.dart';
import 'cyber_page.dart';
import 'exclusive_weapon_page.dart';
import 'top_battle_page.dart';
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
        if (_selectedIndex == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SeventeenHome()),
          );
        } else if (_selectedIndex == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EighteenHome()),
          );
        } /* else if (_selectedIndex == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NineteenHome()),
          );
        } */
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
            const TopBattlePage(),
            const SizedBox(
              height: 20.00,
            ),
            const ExclusiveWeaponPage(),
            const SizedBox(
              height: 20.00,
            ),
            const CyberPage(),
          ],
        ),
      ),
    );
  }
}
