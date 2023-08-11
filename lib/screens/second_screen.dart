import 'package:flutter/material.dart';
import 'package:navigation/screens/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(30),
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Last Screen',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
