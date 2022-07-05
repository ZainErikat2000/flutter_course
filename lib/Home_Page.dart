import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:udemy_course_project/app/sign_in/SignInPage.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key,required this.onLogOut}) : super(key: key);
  final VoidCallback onLogOut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
        actions: <Widget>[
          TextButton(
              onPressed: _logOut,
              child: const Text(
                'Log Out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  void _logOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      onLogOut();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

}
