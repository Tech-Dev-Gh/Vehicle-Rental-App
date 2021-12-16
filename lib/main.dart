import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vehicle_app/constant.dart';

import 'views/onboarding.dart';

void main() => runApp(const VehicleApp());

class VehicleApp extends StatelessWidget {
  const VehicleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Vehicle App",
        theme: ThemeData(
          fontFamily: kbalooFont,
          primaryColor: kprimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontFamily: kpoppinsFont),
            bodyText2: TextStyle(fontFamily: kpoppinsFont),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: kprimaryColor,
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        home: const Onboarding(),
      );
    });
  }
}
