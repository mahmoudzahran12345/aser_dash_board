import 'dart:io';


import 'package:aser_dash_board/repositories/shared/cacheNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:window_manager/window_manager.dart';
import 'constant//route/route.dart' as route;
import 'constant/color.dart';
import 'logic/observe/observe.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheNetwork.cacheInitialization();
  // CacheNetwork.insertToCache(
  //   key: 'token',
  //   value:
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzY2Q1ZWNhOS0wYzRlLTRlYjYtMzkxMi0wOGRjNDM5NmVlN2MiLCJlbWFpbCI6ImtlcGFAZ21haWwuY29tIiwicm9sZSI6IkFkbWluIiwibmJmIjoxNzEyNDg5NzEwLCJleHAiOjE3MTUwODE3MTAsImlhdCI6MTcxMjQ4OTcxMCwiaXNzIjoiNDUuNTguMTU5LjU3IiwiYXVkIjoiNDUuNTguMTU5LjU3In0.GZWE_v7bcac7ZYi-PU9sEgr9woXhoCNqUoIy-1j0l84',
  // );

  await windowManager.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  ThemeData getTheme(BuildContext context) {
    // Call MediaQuery.of(contex) here
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
      scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      dialogTheme: const DialogTheme(
        surfaceTintColor: Color(0xFFF7F7F7),
      ),
      splashColor: Colors.transparent,
      dividerColor: Colors.transparent,
      popupMenuTheme: const PopupMenuThemeData(
        // textStyle: TextStyle(fontSize: 1.sp),
        surfaceTintColor: Colors.white,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: white,
          focusColor: white,
          hoverColor: white,
        ),
      ),
      fontFamily: 'Mona-Sans-Regular',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // You can use the library anywhere in the app even in theme
            theme: const MyApp().getTheme(context),
            home: child,
            onGenerateRoute: route.controller,
            initialRoute: route.splash,
          ),
        );
      },
    );
  }
}
