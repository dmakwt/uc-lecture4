import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildButton({required String text, required Color? color}) {
    return Container(
      color: color,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      height: 70,
      width: 70,
      alignment: Alignment.center,
      child: Text(text),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  'assets/calculator_icon.png',
                  width: 100,
                  height: 100,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(text: 'C', color: Colors.green),
                      buildButton(text: '+/-', color: Colors.green),
                      buildButton(text: '%', color: Colors.green),
                      buildButton(text: '/', color: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(text: '7', color: Colors.grey[400]),
                      buildButton(text: '8', color: Colors.grey[400]),
                      buildButton(text: '9', color: Colors.grey[400]),
                      buildButton(text: '*', color: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(text: '5', color: Colors.grey[400]),
                      buildButton(text: '6', color: Colors.grey[400]),
                      buildButton(text: '4', color: Colors.grey[400]),
                      buildButton(text: '-', color: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(text: '1', color: Colors.grey[400]),
                      buildButton(text: '2', color: Colors.grey[400]),
                      buildButton(text: '3', color: Colors.grey[400]),
                      buildButton(text: '+', color: Colors.green),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
