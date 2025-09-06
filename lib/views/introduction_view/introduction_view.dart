import 'package:flutter/material.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            'assets/images/introduction_image_three.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            'assets/images/introduction_image_two.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 185,
                          ),
                        ),
                        SizedBox(height: 24),
                        ClipOval(
                          child: Image.asset(
                            'assets/images/introduction_image_one.jpg',
                            fit: BoxFit.cover,
                            width: 185,
                            height: 185,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Center(
                child: Text.rich(
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  TextSpan(
                    children: [
                      TextSpan(text: 'The '),
                      TextSpan(
                        text: 'Code Mofid ',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(text: 'App that\n'),
                      TextSpan(text: 'For content, there is a flavor of codes'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Text.rich(
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Color(0xFF727272)),
                  TextSpan(
                    children: [
                      TextSpan(text: 'Everything you need to write '),
                      TextSpan(text: 'useful code',style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 54),
              FilledButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
