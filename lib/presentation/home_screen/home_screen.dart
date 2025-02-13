import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memorizing_words/presentation/home_screen/widgets/home_app_bar.dart';
import 'package:memorizing_words/presentation/home_screen/widgets/item_card.dart';
import 'package:memorizing_words/presentation/test_screen/test_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          Text(
            "Assalomu aleykum, Bahodir 👋",
            style: TextStyle(
              fontSize: 28.sp,
            ),
          ),
          Text(
            "Ozingiz uchun qulay darajani tanlang!",
            style: TextStyle(
              fontSize: 38.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50.h),
          Wrap(
            children: [
              ItemCard(
                title: "Easy",
                subtitle: "Oson darajadagi so’zlar",
                color: Color(0xFF53C3F8),
                subCardColor: Color(0xFF1CB0F6),
                picture: SvgPicture.asset("assets/layer.svg"),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => TestScreen(),
                    ),
                  );
                },
              ),
              ItemCard(
                title: "Medium",
                subtitle: "O’rta darajadagi so’zlar",
                color: Color(0xFF62E302),
                subCardColor: Color(0xFF58CC02),
                picture: SvgPicture.asset("assets/colorfilter.svg"),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => TestScreen(),
                    ),
                  );
                },
              ),
              ItemCard(
                title: "Hard",
                subtitle: "Murakkab so’zlar",
                color: Color(0xFFFFDB1A),
                subCardColor: Color(0xFFFFC800),
                picture: SvgPicture.asset("assets/shapes.svg"),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => TestScreen(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
