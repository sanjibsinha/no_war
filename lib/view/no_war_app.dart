import 'package:flutter/material.dart';

import 'no_war_home_page.dart';

class NoWarApp extends StatelessWidget {
  const NoWarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NoWarHomePage(),
      title: 'Modern War History',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        backgroundColor: const Color(0xFFF3F5F7),
      ),
    );
  }
}
