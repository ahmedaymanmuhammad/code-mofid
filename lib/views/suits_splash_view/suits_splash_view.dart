import 'package:flutter/material.dart';

class SuitsSplashView extends StatelessWidget {
  const SuitsSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDD8560),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/suits_logo.png'),
                SizedBox(width: 12),
                Text(
                  'Suits',
                  style: TextStyle(
                    fontFamily: 'Waterfall',
                    fontSize: 128,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
