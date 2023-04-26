import 'package:flutter/material.dart';
import 'package:twentyx_availability/screens/availability_screen.dart';
import 'package:twentyx_availability/screens/demoScreen.dart';

import 'constants/colors.dart';

void main()
{
  runApp(MyApp()) ;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: 'Poppins', primaryColor: themeColor),
      // color to change 265197
      //home: CircleIconRow(),
     home: AvailabilityScreen(),
    );
  }
}
