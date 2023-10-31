import 'package:flutter/material.dart';

class SignInFailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In failed'),
      ),
      body: Center(
        child: Text(
          'Sign In failed',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}