import 'package:flutter/material.dart';
import 'package:navigation/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 241, 79, 57),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(30),
            backgroundColor: Color.fromARGB(255, 241, 79, 57),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: const Text(
            'Next Screen',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
