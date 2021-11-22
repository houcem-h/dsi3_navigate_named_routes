import 'package:flutter/material.dart';

import './second_screen.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Screen n°1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.teal
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            RaisedButton(
              child: const Text("Go to Screen 2"),
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/screen2');
                }
            ),const Padding(padding: EdgeInsets.only(bottom: 10)),
            RaisedButton(
                child: const Text("Go to Screen 3"),
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/screen3');
                }
            ),
          ],
        ),
      ),
    );
  }
  
}