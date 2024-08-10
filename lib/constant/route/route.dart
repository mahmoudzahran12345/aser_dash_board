import 'package:aser_dash_board/view/auth/createPassword/createPassword.dart';
import 'package:aser_dash_board/view/auth/forgotPassword/forgotPassword.dart';
import 'package:aser_dash_board/view/auth/login/login.dart';
import 'package:aser_dash_board/view/auth/register/register.dart';
import 'package:aser_dash_board/view/auth/verifyCode/verifycode.dart';
import 'package:aser_dash_board/view/homeLanding/homeLanding.dart';
import 'package:aser_dash_board/view/splash/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String login = "login";
const String register = "register";

const String splash = 'splash';
const String forgotPassword = "forgotPassword";
const String verifyCode = "verifyCode";
const String createPassword = "createPassword";
const String homeLanding = "homeLanding";



Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splash:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case login:
      return MaterialPageRoute(builder: (context) => Login ());
    case forgotPassword :
      return MaterialPageRoute(builder: (context) => ForgotPassword ());
    case verifyCode  :
      return MaterialPageRoute(builder: (context) => VerifyCodee ());
    case createPassword  :
      return MaterialPageRoute(builder: (context) => CreatePassword ());
    case homeLanding  :
      return MaterialPageRoute(builder: (context) => HomeLanding());
    case register  :
      return MaterialPageRoute(builder: (context) => Register());









    default:
    // return MaterialPageRoute(builder: (_) => const Splash());
      throw ('Route not found');
  }
}
