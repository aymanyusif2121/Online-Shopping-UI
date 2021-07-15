import 'package:flutter/material.dart';

import '../constant.dart';

class CounterWithFavouriteItem extends StatefulWidget {
  const CounterWithFavouriteItem({
    Key? key,
  }) : super(key: key);

  @override
  _CounterWithFavouriteItemState createState() =>
      _CounterWithFavouriteItemState();
}

int numberOfCounts = 0;

class _CounterWithFavouriteItemState extends State<CounterWithFavouriteItem> {
  Widget outLinedButton(IconData icon, Function press) {
    return SizedBox(
      width: 55,
      height: 35,
      child: Padding(
        padding: EdgeInsets.zero,
        child: Container(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                press();
              });
            },
            child: Icon(icon),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            outLinedButton(Icons.remove, () {
              if (numberOfCounts <= 1) {
                numberOfCounts = 1;
              } else {
                numberOfCounts--;
              }
            }),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPaddin / 2),
              child: Text(numberOfCounts.toString().padLeft(2, '0')),
            ),
            outLinedButton(Icons.add, () {
              numberOfCounts++;
            }),
          ],
        ),
        Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            )),
      ],
    );
  }
}
