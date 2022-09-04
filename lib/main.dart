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
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Text('Hello World'),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                color: Colors.yellow[500],
              ),
              Container(
                  color: Colors.blue[500],
                  height: 200,
                  width: 200,
                  child: Center(child: Image.asset('assets/space_2.jpg'))),
              Container(
                  color: Colors.grey[500],
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  margin: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {
                      print('clicked!');
                    },
                    icon: const Icon(Icons.alternate_email),
                    color: Colors.amber,
                  )),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
    );
  }
}
