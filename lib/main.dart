import 'package:flutter/material.dart';

import 'view/no_war_app.dart';

void main() {
  runApp(const NoWarApp());
}

class NoWarHomePage extends StatefulWidget {
  const NoWarHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NoWarHomePage> createState() => _NoWarHomePageState();
}

class _NoWarHomePageState extends State<NoWarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
