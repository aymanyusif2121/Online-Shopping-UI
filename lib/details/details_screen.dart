import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shopping/details/detail_body.dart';

import '../constant.dart';

class DetailsScreen extends StatelessWidget {
  final products;
  const DetailsScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: detailAppBar(context),
      body: DetailBody(
        products: products,
      ),
    );
  }

  AppBar detailAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: products.color,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: Colors.white70,
              ),
              onPressed: () {},
            ),
          ],
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white70,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: defaultPaddin / 2,
        ),
      ],
    );
  }
}
