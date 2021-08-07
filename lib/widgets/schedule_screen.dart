import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivs_maintenance/models/town.dart';
import 'package:ivs_maintenance/widgets/town_card.dart';

class ScheduleScreen extends StatelessWidget {
  static final double radius = 20;
  List<Town> towns = [
    Town(name: 'Watertown', numSystems: 6, time: '8:00 AM', address: '61 Echo Lake Road, Watertown, 06795'),
    Town(name: 'Bethlehem', numSystems: 3, time: '9:30 AM', address: '36 Main Street South Bethlehem CT. 06751'),
    Town(name: 'Morris', numSystems: 3, time: '10:30 AM', address: 'Town Hall, 3 East St., Morris'),
    Town(name: 'Thomaston', numSystems: 3, time: '1:30 PM', address: 'Town Hall, 158 Main St.,06787'),
    Town(name: 'Litchfield', numSystems: 6, time: '2:30 PM', address: '74 West Street - Route 202 - Litchfield'),
    Town(name: 'Harwinton', numSystems: 4, time: '4:00 PM', address: '100 Bently Dr., Harwinton'),

  ];

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
      body: ListView.builder(
        itemCount: towns.length,
        itemBuilder: (context, index) {
          return TownCard(towns[index]);
        },
      )
    );
  }
}
