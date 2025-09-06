import 'package:flutter/material.dart';

class ProfileMenuButtons extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const ProfileMenuButtons({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset('assets/icons/$icon', scale: 20),
            SizedBox(width: 18),
            Text(
              '$text',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFFFFFFF),
          side: BorderSide.none,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
