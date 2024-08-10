import 'dart:async';


import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/repositories/shared/cacheNetwork.dart';
import 'package:aser_dash_board/widgets/customText/customtext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), ()async {
      Navigator.pushReplacementNamed(context, 'login');

    });
    return Scaffold(
      backgroundColor: orange,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 300.h,),
            Center(child: Text("Nomadica",style: TextStyle(fontWeight:FontWeight.w700,letterSpacing : 20.w,fontSize: 60.sp,color: white),)),

            Center(child: Text("Unleash the explorer within you",style: TextStyle(fontWeight:FontWeight.w700,letterSpacing : 5.w ,fontSize: 10.sp,color: white),)),
            Spacer(),
            Image.asset('assets/images/load.gif',width: 400.w,height: 200.h,color: white,),



          ],
        ),
      ),
    );
  }
}
