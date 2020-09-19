import 'package:Difesa/pages/emergency_dashboard.dart';
import 'package:Difesa/pages/emergency_map.dart';
import 'package:Difesa/pages/emergency_people_list.dart';
import 'package:Difesa/pages/login_page.dart';
import 'package:Difesa/pages/main_dashboard.dart';
import 'package:Difesa/pages/self_defense.dart';
import 'package:Difesa/pages/sos.dart';
import 'package:Difesa/pages/switcher.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => LoginPage(),
        'Switcher': (context) => Switcher(),
        'sos': (context) => SOSPage(),
        'Safe_Dashboard': (context) => MainDashboard(),
        'Emergency_Dashboard': (context) => EmergencyDashboard(),
        'Defense': (context) => SelfDefense(),
        'Strategy': (context) => EmergencyInfoPage(),
        'Emergency_List': (_) => EmergencyPeopleList(),
        'Emergency_Map': (_) => EmergencyMap(),
      },
    );
  }
}
