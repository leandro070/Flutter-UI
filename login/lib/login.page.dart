import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(36.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 60.0,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'LibreBaskerville',
                  fontSize: 42.0),
            ),
            SizedBox(
              height: 25.0,
              width: MediaQuery.of(context).size.width,
            ),
            Text('Email address'),
            SizedBox(
              height: 10.0,
              width: MediaQuery.of(context).size.width,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[400]),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
              width: MediaQuery.of(context).size.width,
            ),
            Text('Password'),
            SizedBox(
              height: 10.0,
              width: MediaQuery.of(context).size.width,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[400]),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 25.0,
              width: MediaQuery.of(context).size.width,
            ),
            InkWell(
              child: Text(
                'Forgot your password?',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              ),
              onTap: () {
                print('password forgot');
              },
            ),
            SizedBox(
              height: 25.0,
              width: MediaQuery.of(context).size.width,
            ),
            RaisedButton(
              child: Text(
                'LOGIN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              color: Colors.pink[400],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(34.0)),
              padding: EdgeInsets.all(16),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
