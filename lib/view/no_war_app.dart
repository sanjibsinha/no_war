import 'package:flutter/material.dart';

import 'no_war_home_page.dart';

class NoWarApp extends StatelessWidget {
  const NoWarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NoWarHomePage(title: 'No War'),
    );
  }
}
