import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorizing_words/presentation/home_screen/widgets/home_app_bar.dart';
import 'package:memorizing_words/presentation/test_screen/widgets/test_header.dart';
import 'package:memorizing_words/presentation/test_screen/widgets/test_timer.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TestTimer(),
            SizedBox(height: 20.h),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bir xil so’zlarni tanlang",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'So’zning inglizcha hamda o’zbekcha holatini birdaniga bosing',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Divider(color: Colors.white),
                    SizedBox(height: 10.h),
                    TestHeader(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
