import 'package:flutter/material.dart';

class UserAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'User Account',
          style: TextStyle(fontSize: 30),
        )),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Sign Out',
          ),
        ),
      ),
    );
  }
}
