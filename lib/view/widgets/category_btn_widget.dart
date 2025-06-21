import 'package:flutter/material.dart';

class CategoryBtnWidget extends StatelessWidget {
  final bool isSelected;
  final Text btn_name;
  final IconData btn_icon;
  const CategoryBtnWidget({
    super.key,
    required this.isSelected,
    required this.btn_name,
    required this.btn_icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? Colors.black : Colors.white,
      ),
      child: Center(
        child: Column(
          children: [
            Icon(btn_icon, color: isSelected ? Colors.white : Colors.black,) ,
            btn_name
          ],
        ),
      ),
    );
  }
}
