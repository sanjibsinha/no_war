import 'package:flutter/material.dart';
import '../view/home_page.dart';

class CyberWarPage extends StatelessWidget {
  const CyberWarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to About All Wars Page'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
            Text(
              'Cyber War Home',
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20.00,
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
