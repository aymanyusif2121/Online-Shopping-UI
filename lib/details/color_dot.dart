import 'package:flutter/material.dart';
import '../constant.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultPaddin / 4,
        right: defaultPaddin / 4,
      ),
      padding: EdgeInsets.all(1.9),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20),
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected == true ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
