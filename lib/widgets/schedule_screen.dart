import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivs_maintenance/mock_data.dart';
import 'package:ivs_maintenance/models/town.dart';
import 'package:ivs_maintenance/widgets/town_card.dart';


class ScheduleScreen extends StatelessWidget {
  static final double radius = 20;
  List<Town> towns = townsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Schedule',
            style: TextStyle(fontSize: 30),
          )),
        ),
        body: Column(
          children: [
            Text(
              'Hello, Kevin!',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
                'Red Team',
                style: TextStyle(color: Colors.grey),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.calendar_today,
                color: Colors.grey,
                size: 15,
              ),
              label: Text(
                'August 9, 2021',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: towns.length,
                itemBuilder: (context, index) {
                  return TownCard(towns[index]);
                },
              ),
            ),
          ],
        ));
  }
}
