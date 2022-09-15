import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Map arguments;

  Home({super.key, required this.arguments});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //data = ModalRoute.of(context)!.settings.arguments;
    //print(ModalRoute.of(context)!.settings.arguments.runtimeType);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('edit location'),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [Text(widget.arguments['location'].toString())],
            ),
          ],
        ),
      ),
    );
  }
}
