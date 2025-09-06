import 'package:flutter/material.dart';

// Custom Widget : Social Media Buttons
class SocialButtons extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;

  /*
  First Parameter : Icon
  Second Parameter : Text
  Third Parameter : Function
  */

  const SocialButtons({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xFFFFFFFF),
        side: BorderSide(color: Color(0xFF4d5057),width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/icons/$icon',scale: 18,),
            SizedBox(width: 52),
            Text(
              'Log In With $text',
              style: TextStyle(color: Color(0xff000000), fontSize: 16,fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
