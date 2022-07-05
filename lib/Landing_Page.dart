import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:udemy_course_project/Home_Page.dart';
import 'package:udemy_course_project/app/sign_in/SignInPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user;

  @override
  void initState() {
    super.initState();

    _updateUser(FirebaseAuth.instance.currentUser);
  }

  void _updateUser(User? user){
    setState((){
      _user = user;
    });

    if (kDebugMode) {
      print("user id: ${user?.uid}");
    }
  }

  @override
  Widget build(BuildContext context) {
    if(_user == null){
    return SignInPage(onSignIn: _updateUser,);
    }
      return Home_Page(onLogOut: () => _updateUser(null),);
  }
}
