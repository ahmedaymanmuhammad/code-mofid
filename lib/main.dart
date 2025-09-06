import 'package:codemofidapplication/views/create_new_password_view/create_new_password_view.dart';
import 'package:codemofidapplication/views/forget_password_view/forget_password_view.dart';
import 'package:codemofidapplication/views/my_wishlist_view/my_wishlist_view.dart';
import 'package:codemofidapplication/views/signup_view/signup_view.dart';
import 'package:flutter/material.dart';
import 'views/add_address_view/add_address_view.dart';
import 'views/introduction_view/introduction_view.dart';
import 'views/loading_view/loading_view.dart';
import 'views/login_view/login_view.dart';
import 'views/my_profile_view/my_profile_view.dart';
import 'views/on_boarding_view/on_boarding_view.dart';
import 'views/otp_view/otp.dart';
import 'views/splash_view/splash_view.dart';
import 'views/suits_splash_view/suits_splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFdc6000),
          secondary: Color(0xFFF9FAFB),
          error: Colors.red,
          background: Color(0xFFF9FAFB),
          surface: Color(0xFFF9FAFB),
        ),
        fontFamily: 'Cairo',
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Color(0xff393a41), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Color(0xff696d77), width: 1.5),
          ),
          filled: true,
          fillColor: Color(0xffffffff),
        ),
      ),

      home: OnBoardingViews(),
    );
  }
}
