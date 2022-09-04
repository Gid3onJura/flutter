import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BusinessCard(),
  ));
}

class BusinessCard extends StatefulWidget {
  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  // Layout
  final Color _backgroundColor = const Color(0xff165954);
  final Color _backgroundColorAppBar = const Color(0xffed6b5b);
  final Color _textColorText = const Color(0x76F9AD66);
  final Color _textColorHighlightedText = const Color(0xfff9ac66);
  final double _letterSpacing = 2.0;
  final double _fontSize = 20.0;
  final double _fontSizeAppBar = 23.0;

  // Data
  int skillLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text(
          'People ID Card',
          style: TextStyle(
              color: _textColorHighlightedText, fontSize: _fontSizeAppBar),
        ),
        centerTitle: true,
        backgroundColor: _backgroundColorAppBar,
        elevation: 0.0,
      ),
      floatingActionButton: _getFloatingActionButton(),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/space_2.jpg'),
                  radius: 50.0,
                  backgroundColor: _backgroundColor,
                ),
              ),
              Divider(height: 90.0, color: _backgroundColorAppBar),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Name'.toUpperCase(),
                  style: TextStyle(
                      color: _textColorText, letterSpacing: _letterSpacing),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Jon Doe',
                  style: TextStyle(
                      color: _textColorHighlightedText,
                      letterSpacing: _letterSpacing,
                      fontSize: _fontSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Current job title'.toUpperCase(),
                  style: TextStyle(
                      color: _textColorText, letterSpacing: _letterSpacing),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Software Developer',
                  style: TextStyle(
                      color: _textColorHighlightedText,
                      letterSpacing: _letterSpacing,
                      fontSize: _fontSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Current Skill Level'.toUpperCase(),
                  style: TextStyle(
                      color: _textColorText, letterSpacing: _letterSpacing),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  '$skillLevel',
                  style: TextStyle(
                      color: _textColorHighlightedText,
                      letterSpacing: _letterSpacing,
                      fontSize: _fontSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: _textColorHighlightedText,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'web@gmail.com',
                      style: TextStyle(
                          color: _textColorHighlightedText,
                          fontSize: 14.0,
                          letterSpacing: _letterSpacing),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  Widget _getFloatingActionButton() {
    if (skillLevel == 10) {
      return Container();
    }
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            if (skillLevel < 10) {
              skillLevel += 1;
            }
          });
        },
        backgroundColor: _textColorHighlightedText,
        child: Icon(Icons.add));
  }
}
