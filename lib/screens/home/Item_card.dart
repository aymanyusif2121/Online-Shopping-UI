import 'package:flutter/material.dart';
import 'package:online_shopping/models/product.dart';
import '../../constant.dart';

class ItemCard extends StatelessWidget {
  final Product products;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.press,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(defaultPaddin),
              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${products.id}",
                child: Image.asset(products.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPaddin / 4),
            child: Text(
              // products is out demo list
              products.title,
              style: TextStyle(color: textLightColor),
            ),
          ),
          Text(
            "\$${products.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
