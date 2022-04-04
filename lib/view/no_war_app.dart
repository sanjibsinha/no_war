import 'package:flutter/material.dart';
import 'package:no_war/view/seventeen_wars/seventeen_home.dart';
import 'home_page.dart';

class NoWarApp extends StatelessWidget {
  const NoWarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // it defines all the routes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No War',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        backgroundColor: const Color.fromARGB(255, 119, 131, 143),
      ),
      routes: {
        '/': (context) => const HomePage(),
        SeventeenHome.routeNname: (context) => const SeventeenHome(),
      },
    );
  }
}
