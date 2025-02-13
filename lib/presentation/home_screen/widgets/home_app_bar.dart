import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar HomeAppBar() => AppBar(
      title: Text("🔥 Rekord natija: 15 point"),
      actions: [
        SvgPicture.asset("assets/user.svg"),
        SizedBox(width: 2.w),
        Text("Bahodir Yokubov"),
        SizedBox(width: 10.w),
      ],
    );
