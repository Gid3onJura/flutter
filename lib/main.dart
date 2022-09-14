import 'package:flutter/material.dart';
import 'package:playground/pages/choose_location.dart';
import 'package:playground/pages/home.dart';
import 'package:playground/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const Loading(),
          '/home': (context) => const Home(),
          '/location': (context) => const ChooseLocation(),
        },
        onGenerateRoute: (settings) {
          print(settings);
        }),
  );
}
