import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    this.color,
    this.subCardColor,
    required this.picture,
    required this.onTap,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final Color? color;
  final Color? subCardColor;
  final SvgPicture picture;
  final VoidCallback onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 250.w,
          width: 217.w,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                    width: 50.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: subCardColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: picture,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10).w,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Boshlash",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: color?.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: subCardColor,
                            ),
                          ),
                        ],
                      ),
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
}
