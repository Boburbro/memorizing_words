import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestTimer extends StatelessWidget {
  const TestTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10.w,
      children: [
        Text(
          "Qolgan vaqt",
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              value: 0.7,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        Text(
          "-00:45",
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
      ],
    );
  }
}
