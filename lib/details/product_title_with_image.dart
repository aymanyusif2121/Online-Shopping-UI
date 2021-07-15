import 'package:flutter/material.dart';
import 'package:online_shopping/models/product.dart';

import '../constant.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hand Bag",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white38),
          ),
          Text(
            products.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PRICE',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      '\$${products.price}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Hero(
                  tag: "${products.id}",
                  child: Image.asset(
                    products.image,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
