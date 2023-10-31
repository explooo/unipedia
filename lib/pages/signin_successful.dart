import 'package:flutter/material.dart';

class SignInSuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Successful'),
      ),
      body: Center(
        child: Text(
          'Sign In Successful',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}