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
  String flag;
  String url;

  LocationData({required this.flag, required this.url});
}

class _LoadingState extends State<Loading> {
  Map locationData = {
    'berlin': {'flag': '276', 'url': 'Europe/Berlin'}
  };

  void setUpWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin',
        flag:
            'https://countryflagsapi.com/svg/${locationData['berlin']['flag']}',
        url: locationData['berlin']['url']);

    await instance.getTime();
    Navigator.of(context).pushNamed('/home', arguments: {
      'loaction': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(60.0),
      child: Text('loading...'),
    ));
  }
}
