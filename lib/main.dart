import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BusinessCard(),
  ));
}

class BusinessCard extends StatelessWidget {
  final Color _backgroundColor = Color(0xff165954);
  final Color _backgroundColorHeadline = Color(0xffed6b5b);
  final Color _textColorText = Color(0x76F9AD66);
  final Color _textColorHighlightedText = Color(0xfff9ac66);
  final double _letterSpacing = 2.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: this._backgroundColor,
      appBar: AppBar(
        title: Text(
          'People ID Card',
          style: TextStyle(color: this._textColorHighlightedText),
        ),
        centerTitle: true,
        backgroundColor: this._backgroundColorHeadline,
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/space_2.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(height: 90.0, color: this._backgroundColorHeadline),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Name'.toUpperCase(),
                  style: TextStyle(
                      color: this._textColorText,
                      letterSpacing: this._letterSpacing),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Jon Doe',
                  style: TextStyle(
                      color: this._textColorHighlightedText,
                      letterSpacing: this._letterSpacing,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Current job title'.toUpperCase(),
                  style: TextStyle(
                      color: this._textColorText,
                      letterSpacing: this._letterSpacing),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Software Developer',
                  style: TextStyle(
                      color: this._textColorHighlightedText,
                      letterSpacing: this._letterSpacing,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: this._textColorHighlightedText,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'web@gmail.com',
                      style: TextStyle(
                          color: this._textColorHighlightedText,
                          fontSize: 18.0,
                          letterSpacing: this._letterSpacing),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
