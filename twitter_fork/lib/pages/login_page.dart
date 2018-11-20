import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'lib/images/twitter_logo_blue.png',
                    width: 64.0,
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'See what\'s happening in the world right now',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Monserrat',
                            decoration: TextDecoration.none),
                      ),
                    ),
                    footer(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

Widget buttonsLogin() {
  return Padding(
    padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Join Twitter Today',
            style: TextStyle(
                fontFamily: 'Monserrat',
                fontSize: 12.0,
                decoration: TextDecoration.none,
                color: Colors.black),
          ),
        ),
        new RaisedButton(
            child: new Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontFamily: 'Monserrat'),
            ),
            onPressed: () {},
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0))),
        new OutlineButton(
          child: new Text(
            "Log in",
            style: TextStyle(color: Colors.blue, fontFamily: 'Monserrat'),
          ),
          color: Colors.blue,
          onPressed: () {},
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          highlightColor: Colors.blue[100],
          borderSide: BorderSide(width: 2.0, color: Colors.blue),
        )
      ],
    ),
  );
}

Widget footer() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                buttonsLogin(),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      rowInfo(Icons.search, 'Follow your interests.'),
                      rowInfo(Icons.people_outline, 'Hear what people are talking about.'),
                      rowInfo(Icons.chat_bubble_outline, 'Join the conversation.'),
                    ],
                  ),
                ),
              ],
            ))
      ],
    ),
  );
}

Widget rowInfo(IconData icon, String text) {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
        child: Icon(icon, color: Colors.white),
      ),
      Text(text,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Monserrat',
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              decoration: TextDecoration.none))
    ],
  );
}
