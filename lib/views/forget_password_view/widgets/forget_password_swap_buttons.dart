import 'package:flutter/material.dart';

class ForgetPasswordSwapButtons extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ForgetPasswordSwapButtons({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF9FAFB) : null,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Text(
            '$text',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Color(0xFFA1A8B0),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
