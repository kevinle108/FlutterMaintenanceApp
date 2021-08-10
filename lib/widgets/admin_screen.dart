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
      body: Card(
        child: ExpansionTile(
          title: Text('Birth of Universe'),
          children: [
            Text('Big Bang'),
            Text('Birth of the Sun'),
            Text('Earth is Born'),
          ],
        ),
      ),
    );
  }
}
