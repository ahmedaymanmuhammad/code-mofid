import 'package:flutter/material.dart';

class OnBoardingViews extends StatefulWidget {
  const OnBoardingViews({super.key});

  @override
  State<OnBoardingViews> createState() => _OnBoardingViewsState();
}

class _OnBoardingViewsState extends State<OnBoardingViews> {
  int currentIndex = 0;
  List<String> pages = ['one', 'two', 'three'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/on_boarding_screen_${pages[currentIndex]}.jpg',
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
                      currentIndex < pages.length-1
                          ?FilledButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFEEEEEE),
                          side: BorderSide(
                            color: Color(0xFF000000),
                            width: 1.5,
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            currentIndex = pages.length - 1;
                          });
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ):SizedBox.shrink()
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
                      Expanded(
                        child: currentIndex > 0
                            ? OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: CircleBorder(),
                                  side: BorderSide(width: 1.5),
                                  padding: EdgeInsets.all(15),
                                ),
                                onPressed: () {
                                  setState(() {
                                    currentIndex--;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xFF000000),
                                  size: 25,
                                ),
                              )
                            : SizedBox.shrink(),
                      ),
                      Spacer(),
                      Expanded(
                        child: Row(
                          children: [
                            ...List.generate(
                              pages.length,
                              (index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 0,
                                ),
                                child: CircleAvatar(
                                  radius: currentIndex == index ? 8 : 6,
                                  backgroundColor: currentIndex == index
                                      ? null
                                      : Color(0xFF000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: FloatingActionButton(
                          shape: CircleBorder(),
                          elevation: 0,
                          highlightElevation: 0,
                          onPressed: () {
                            if (currentIndex < pages.length - 1) {
                              setState(() {
                                currentIndex++;
                              });
                            }
                          },
                          child: Center(child: Icon(Icons.arrow_forward_ios)),
                        ),
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
