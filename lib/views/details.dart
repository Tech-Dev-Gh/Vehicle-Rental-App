import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vehicle_app/widgets/appBar.dart';

class Detail extends StatelessWidget {
  final String? name;
  final int? price;
  final String? image;
  final Color? color;
  final String? description;

  const Detail(
      {Key? key,
      this.name,
      this.price,
      this.image,
      this.color,
      this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(name, context),
      body: Column(
        // physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: 2.h),
          Hero(
            tag: image!,
            child: Image.asset(
              image!,
              height: 40.h,
              fit: BoxFit.contain,
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name!,
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset("assets/images/star.png"),
                        ],
                      ),
                      Text(
                        "\$$price/day",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 38.0),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        description!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 38.0),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            fixedSize: Size(double.infinity, 8.0.h),
                            primary: Colors.black,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
