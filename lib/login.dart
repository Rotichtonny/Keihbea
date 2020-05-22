import 'package:Keihbea/sign_in.dart';
import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text.rich(TextSpan(
                  text: 'Keih',
                  style: TextStyle(
                      color: Hexcolor('#6C63FF'),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Bea',
                      style: TextStyle(
                          color: Hexcolor('#3a3768'),
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ])),
              Text(
                "Listen, Watch, Learn, Enjoy",
                style: TextStyle(
                    color: Hexcolor('#3a3768'),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Podcast on the Go",
                style: TextStyle(
                    color: Hexcolor('#3a3768'),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              new Image(
                  image: new AssetImage("assets/undraw_recording_lywr.png"),
                  height: 370,
                  fit: BoxFit.fitWidth),
              SizedBox(height:50),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Hexcolor('#6C63FF'),
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return FirstScreen();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Hexcolor('#6C63FF')),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Hexcolor('#3a3768'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
