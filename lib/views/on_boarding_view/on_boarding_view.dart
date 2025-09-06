import 'package:flutter/material.dart';

class OnBoardingViews extends StatelessWidget {
  const OnBoardingViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/on_boarding_screen_one.jpg',
            fit: BoxFit.fitHeight,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xFFEEEEEE),
                            width: 1.5,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFEEEEEE),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Welcome To \nCode Mofid',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Discover new horizons in learning programming\nin the most enjoyable way',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Spacer(),
                      CircleAvatar(radius: 8),
                      SizedBox(width: 10),
                      CircleAvatar(radius: 8),
                      SizedBox(width: 10),
                      CircleAvatar(radius: 8),
                      Spacer(),
                      FloatingActionButton(
                        shape: CircleBorder(),
                        elevation: 0,
                        highlightElevation: 0,
                        onPressed: () {},
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
