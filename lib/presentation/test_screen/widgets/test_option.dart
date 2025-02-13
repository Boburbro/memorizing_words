import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestOption extends StatelessWidget {
  const TestOption({super.key, this.isCorrect});

  final bool? isCorrect;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: _getColor(),
            border: _getBorder(),
          ),
          child: SizedBox(
            height: 50.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Difficult",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "adjective",
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxBorder? _getBorder() {
    if (isCorrect == null) {
      return null;
    }

    return Border.all(
      color: isCorrect! ? Color(0xFFADEBD4) : Color(0xFFF7F1BB),
    );
  }

  Color _getColor() {
    if (isCorrect == null) {
      return Colors.white;
    }

    return isCorrect! ? Color(0xFFD7F5EA) : Color(0xFFFBF8DE);
  }
}
