import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/login.dart';
import 'package:flutter/material.dart';

class Craeteuser {
  final FirebaseAuth _user = FirebaseAuth.instance;
  //method

  Future createuser(context) async {
    _user
        .createUserWithEmailAndPassword(
            email: emailcontroler1.text, password: password1.text)
        .then((value) => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            });
  }
}

class Signuser {
  final FirebaseAuth user = FirebaseAuth.instance;
  //method

  Future signinemailandpassword(context) async {
    await user
        .signInWithEmailAndPassword(
            email: emailcontroler.text, password: password.text)
        .then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }
}
