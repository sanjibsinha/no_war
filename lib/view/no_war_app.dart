import 'package:flutter/material.dart';
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
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
      },
    );
  }
}
