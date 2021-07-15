import 'package:flutter/material.dart';
import '../../constant.dart';

class Categories extends StatefulWidget {
  final PageController controller;
  const Categories({required this.controller});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'hand bag',
    'jewelery',
    'footware',
    'dresses',
  ];

  int selectedBox = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => categoriesText(index),
        ),
      ),
    );
  }

  Widget categoriesText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBox = index;
          widget.controller.animateToPage(
            index,
            duration: Duration(
              milliseconds: 300,
            ),
            curve: Curves.bounceIn,
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPaddin * 1.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedBox == index ? textColor : textLightColor,
              ),
            ),
            AnimatedContainer(
              duration: Duration(
                milliseconds: 300,
              ),
              margin: EdgeInsets.only(top: defaultPaddin / 4),
              height: 2,
              width: 30,
              color: selectedBox == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
