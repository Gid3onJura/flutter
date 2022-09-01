import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(child: Image.asset('assets/space_2.jpg')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
