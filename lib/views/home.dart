import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vehicle_app/model/vehicle.dart';
import 'package:vehicle_app/views/types.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ElevatedButton buildBox({Color? color, String? text, VoidCallback? press}) {
      return ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
              primary: color,
              fixedSize: Size(39.w, 20.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ));
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildBox(
              color: const Color(0xFF8382C2),
              text: "Cars",
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Types(itemName: "Cars", items: getCars)))),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBox(
                  color: const Color(0xFFB67853),
                  text: "Big Cars",
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Types(itemName: "Big Cars", items: getBigCars)))),
              buildBox(
                  color: const Color(0xFFA34D4E),
                  text: "Bikes",
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Types(itemName: "Big Cars", items: getBikes)))),
            ],
          ),
        ],
      ),
    );
  }
}
