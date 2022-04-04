import 'package:flutter/material.dart';
import '../../model/eighteen_hundred_wars.dart';
import 'eighteen_first.dart';

class EighteenHome extends StatefulWidget {
  const EighteenHome({Key? key}) : super(key: key);

  @override
  _EighteenHomeState createState() => _EighteenHomeState();
}

class _EighteenHomeState extends State<EighteenHome> {
  List<EighteenHundredWars> eighteenWars = [
    eighteenHundredWars[0],
    eighteenHundredWars[1],
    eighteenHundredWars[2],
    eighteenHundredWars[3],
    eighteenHundredWars[4],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            stretch: true,
            expandedHeight: 350.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/03/27/07/38/police-1282330_960_720.jpg'),
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 450,
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // text direction does the same thing horizontally
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Five Bloody Battles - 1700',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schuyler',
                            foreground: Paint()
                              ..color = Colors.red
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EighteenFirst()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '1. ${eighteenWars[0].name}',
                          style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Trajan Pro',
                              foreground: Paint()
                                ..color = Colors.blue
                                ..strokeWidth = 2.0
                                ..style = PaintingStyle.stroke),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '2. ${eighteenWars[1].name}',
                        style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Trajan Pro',
                            foreground: Paint()
                              ..color = Colors.blue
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '3. ${eighteenWars[2].name}',
                        style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Trajan Pro',
                            foreground: Paint()
                              ..color = Colors.blue
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '4. ${eighteenWars[3].name}',
                        style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Trajan Pro',
                            foreground: Paint()
                              ..color = Colors.blue
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '5. ${eighteenWars[4].name}',
                        style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Trajan Pro',
                            foreground: Paint()
                              ..color = Colors.blue
                              ..strokeWidth = 2.0
                              ..style = PaintingStyle.stroke),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
            ]),
          ),
        ],
      ),
    );
  }
}
