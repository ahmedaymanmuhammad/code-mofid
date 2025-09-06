import 'package:flutter/material.dart';

class CatogeryList extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const CatogeryList({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        child: Text(
          '$title',
          style: TextStyle(color: isSelected ? Colors.white : null),
        ),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      ),
    );
  }
}
