import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:vehicle_app/constant.dart';

import 'home.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Map<dynamic, dynamic>> data = [
    {
      "text": "Find Your Vehicle",
      "subText": "Find the perfect Vehicle for every occasion",
      "imgUrl": "assets/images/intro/intro1.png",
      "buttonText": "Continue",
    },
    {
      "text": "Your dream Car",
      "subText": "Rent the car you've always wanted to drive.",
      "imgUrl": "assets/images/intro/intro2.png",
      "buttonText": "Continue",
    },
    {
      "text": "Small Ones Too!",
      "subText": "Rent a small vehicle for those short distances.",
      "imgUrl": "assets/images/intro/intro3.png",
      "buttonText": "Continue",
    },
    {
      "text": "Find Our Stations",
      "subText": "Find your nearest station to rent your car!",
      "imgUrl": "assets/images/intro/intro4.png",
      "buttonText": "Get Started",
    }
  ];

  AnimatedContainer buildIndicator({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      height: 7.0,
      width: 25.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? kprimaryColor : ksecondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android
        // use (light) for white status bar and (dark) for black status bar
        statusBarIconBrightness: Brightness.dark,
        // For IOS
        // use (dark) for white status bar and (light) for black status bar
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
            child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 3.0.h),
            Center(
              child: Text(
                "Beepy",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 8.0.h),
            SizedBox(
              height: 40.h,
              child: PageView.builder(
                controller: _pageController,
                itemCount: data.length,
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (_, index) {
                  return Image.asset(data[index]['imgUrl']);
                },
              ),
            ),
            SizedBox(height: 4.0.h),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    data.length, (index) => buildIndicator(index: index)),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    data[_currentPage]["text"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  Text(
                    data[_currentPage]["subText"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8.0.h),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(double.infinity, 7.5.h),
                    ),
                    child: Text(
                      data[_currentPage]["buttonText"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
