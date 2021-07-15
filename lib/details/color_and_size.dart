import 'package:flutter/material.dart';
import 'package:online_shopping/models/product.dart';

import '../constant.dart';
import 'color_dot.dart';

class ColorAndSize extends StatefulWidget {
  const ColorAndSize({
    Key? key,
    required this.products,
  }) : super(key: key);
  final Product products;

  @override
  _ColorAndSizeState createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
  int selectedIndex = 1;
  List<Color> colors = [
    Colors.black,
    Colors.amber,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'COLOR',
                style: TextStyle(color: textColor),
              ),
              Row(
                children: List.generate(
                  3,
                  (index) => GestureDetector(
                    onTap: () => {
                      setState(() {
                        selectedIndex = index;
                      }),
                    },
                    child: ColorDot(
                      color: this.colors[index],
                      isSelected: this.selectedIndex == index ? true : false,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: textColor),
              children: [
                TextSpan(
                  text: 'ayman\n',
                ),
                TextSpan(
                  text: '\$${widget.products.size}',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
