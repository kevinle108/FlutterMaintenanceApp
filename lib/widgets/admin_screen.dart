import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Admin',
              style: TextStyle(fontSize: 30),
            )),
      ),
      body: Center(
        child: Text(
          'Admin',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
