import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Column(
        children: [
          Spacer(),
          ClipOval(
            child: Image.asset(
              'assets/images/code_mofid_logo.png',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Ahaleel',
                fontSize: 20,
                color: Color(0xFF323439),
              ),
              children: [
                TextSpan(text: 'صــديـقـك '),
                TextSpan(
                  text: 'الجديد ',
                  style: TextStyle(color: ColorScheme.of(context).primary),
                ),
                TextSpan(text: 'لــكــتــابــة '),
                TextSpan(
                  text: 'كود مفيد',
                  style: TextStyle(color: ColorScheme.of(context).primary),
                ),
                TextSpan(text: '!'),
              ],
            ),
            textDirection: TextDirection.rtl,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
