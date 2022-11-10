import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maan_store/Home/mt_bicycle_home.dart';
import 'package:maan_store/Home/mt_mobile_home.dart';
import 'package:maan_store/Home/mt_motor_cycle_home.dart';

import 'Home/mt_car_home.dart';
import 'Home/mt_cosmetics_home.dart';
import 'Home/mt_hardware_home.dart';

void main() {
  runApp(MaanStoreApp());
}

class MaanStoreApp extends StatelessWidget {
  const MaanStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme.apply())),
      home: HardwareHomeScreen(),
    );
  }
}
