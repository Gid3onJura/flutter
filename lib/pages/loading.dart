import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:playground/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class LocationData {
  int flag;
  String url;

  LocationData({required this.flag, required this.url});
}

class _LoadingState extends State<Loading> {
  Map locationData = {'berlin': LocationData(flag: 276, url: 'Berlin/Europe')};

  void setUpWorldTime() {
    WorldTime instance = WorldTime(
        location: 'Berlin',
        flag: locationData['berlin'].flag,
        url: locationData['berlin'].url);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('loading screen...'));
  }
}
