import 'package:flutter/material.dart';
import 'package:udemy_course_project/app/Custom_Widgets/CustomElevatedButton.dart';
import 'package:udemy_course_project/app/Custom_Widgets/SocialSignInButton.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          'Sign In',
        ),
        elevation: 2,
      ),
      body: _buildSignInColumn(),
    );
  }

  Padding _buildSignInColumn() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          SocialSignInButton(
            borderRadius:24,
            height: 32,
            color: Colors.white,
            callBack: _signInWithGoogle,
            asset: 'images/google-logo.png',
            child: const Text(
              'Sign in with google',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SocialSignInButton(
            borderRadius:24,
            height: 32,
            color: Colors.blueAccent,
            callBack: _signInWithFacebook,
            asset: 'images/facebook-logo.png',
            child: const Text(
              'Sign in with Facebook',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomElevatedButton(
            borderRadius: 24,
            height: 32,
            color: Colors.greenAccent,
            callBack: _signInWithEmail,
            child: const Text(
              'Sign in with Email',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'or',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomElevatedButton(
            borderRadius: 24,
            height: 32,
            color: Colors.yellowAccent,
            callBack: _signInAnonymously,
            child: const Text(
              'Enter Anonymously',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signInAnonymously() {}

  void _signInWithGoogle() {}

  void _signInWithFacebook() {}

  void _signInWithEmail() {}
}
