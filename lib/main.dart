import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 2.0,
              color: Colors.grey[500],
              fontFamily: 'Raleway'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    ),
  ));
}
