import 'package:flutter/material.dart';
import 'package:online_shopping/constant.dart';
import 'package:online_shopping/details/details_screen.dart';
import 'package:online_shopping/models/product.dart';

import 'categories.dart';
import 'Item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _controller = PageController();
  List<Widget> pages = List.generate(
    4,
    (index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPaddin),
      child: GridView.builder(
        itemCount: products[index].length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: defaultPaddin,
          crossAxisSpacing: defaultPaddin,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, eachIndex) => ItemCard(
          products: products[index][eachIndex],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                products: products[index][eachIndex],
              ),
            ),
          ),
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          child: Categories(controller: _controller),
        ),
        Expanded(
          child: PageView.builder(
            itemBuilder: (context, index) => pages[index],
            itemCount: pages.length,
            controller: _controller,
          ),
        ),
      ],
    );
  }
}
