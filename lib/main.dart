import 'package:flutter/material.dart';
import 'package:playground/pages/choose_location.dart';
import 'package:playground/pages/home.dart';
import 'package:playground/pages/loading.dart';

void main() {
  const Map defaultLocation = {
    'location': 'Berlin',
    'flag': 'https://countryflagsapi.com/svg/276',
    'time': 'Europe/Berlin',
  };
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => Home(
              arguments: defaultLocation,
            ),
        '/location': (context) => const ChooseLocation(),
      },
    ),
  );
}
