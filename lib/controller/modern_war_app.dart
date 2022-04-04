import 'package:flutter/material.dart';
import '../view/home_page.dart';

class ModernWarApp extends StatelessWidget {
  const ModernWarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // it defines all the routes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(),
      },
      title: 'Modern War History',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        backgroundColor: const Color.fromARGB(255, 119, 131, 143),
      ),
    );
  }
}
