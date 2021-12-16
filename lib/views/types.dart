import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vehicle_app/model/vehicle.dart';
import 'package:vehicle_app/views/details.dart';
import 'package:vehicle_app/widgets/appBar.dart';

class Types extends StatelessWidget {
  final String? itemName;
  final List<Vehicle>? items;

  const Types({Key? key, this.itemName, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(itemName!, context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: ListView.builder(
          itemCount: items!.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(
                            name: items![index].name,
                            price: items![index].price,
                            image: items![index].url,
                            description: items![index].description,
                            color: items![index].cardColor,
                          ))),
              child: Container(
                width: 306,
                height: 143.5,
                margin: const EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                  color: items![index].cardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Text(
                        items![index].name.toString(),
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Positioned(
                        top: 40.0,
                        child: Text(
                          "${items![index].price}/day",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80.0,
                        child: Image.asset("assets/images/star.png"),
                      ),
                      Positioned(
                        top: 4.0.h,
                        left: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 55.h
                            : 13.0.h,
                        child: Hero(
                            tag: items![index].url!,
                            child: Image.asset("${items![index].url}")),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
