import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/logic/home/home_cubit.dart';
import 'package:aser_dash_board/logic/home/home_state.dart';
import 'package:aser_dash_board/view/home/home/addAdvirtis/addAdevirtes.dart';
import 'package:aser_dash_board/view/home/home/homeMain/homeMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'addAdvirtis/active/active.dart';
import 'blog/addBlog.dart';
import 'blog/blog.dart';

class Home extends StatelessWidget {
   Home({super.key});
   PageController pageController = PageController();


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => HomeCubit()..load(),
      child: PageView(
        controller: pageController,
        children: [

          HomeMain(controller: pageController,),
          Blog(blog: pageController,),
          Active(controller: pageController,),
          AddBlog(controller: pageController,),



        ],
      ),
    );
  }
}
