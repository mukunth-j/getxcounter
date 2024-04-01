import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "The Count 1 of the Number is  $_count",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          onLongPress: () {
            setState(() {
              _count = 0;
            });
          },
        )
      ],
    ));
  }
}
