import 'package:flutter/material.dart';
import 'package:ivs_maintenance/widgets/admin_screen.dart';
import 'package:ivs_maintenance/widgets/report_screen.dart';
import 'package:ivs_maintenance/widgets/schedule_screen.dart';
import 'package:ivs_maintenance/widgets/user_account_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final screens = [
    ScheduleScreen(),
    ReportScreen(),
    AdminScreen(),
    UserAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'IVS Maintenance App',
        )),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.red,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() => selectedIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings_outlined),
            label: 'Admin',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'User'),
        ],
      ),
    );
  }
}
