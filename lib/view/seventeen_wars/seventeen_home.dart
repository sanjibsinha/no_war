import 'package:flutter/material.dart';
import '../../model/seventeen_hundred_wars.dart';
import 'seventeen_first.dart';

class SeventeenHome extends StatefulWidget {
  static const routeNname = '/seventen-home';
  const SeventeenHome({Key? key}) : super(key: key);

  @override
  _SeventeenHomeState createState() => _SeventeenHomeState();
}

class _SeventeenHomeState extends State<SeventeenHome> {
  List<SeventeenHundredWars> seventeenWars = [
    seventeenHundredWars[0],
    seventeenHundredWars[1],
    seventeenHundredWars[2],
    seventeenHundredWars[3],
    seventeenHundredWars[4],
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
                    'https://cdn.pixabay.com/photo/2017/08/01/14/42/knight-2565957_960_720.jpg'),
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
                              builder: (context) => const SeventeenFirst()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '1. ${seventeenWars[0].name}',
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
                        '2. ${seventeenWars[1].name}',
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
                        '3. ${seventeenWars[2].name}',
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
                        '4. ${seventeenWars[3].name}',
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
                        '5. ${seventeenWars[4].name}',
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
