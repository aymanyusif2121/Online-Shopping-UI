import 'package:flutter/material.dart';
import 'package:online_shopping/details/counter_with_favourite_item.dart';
import 'package:online_shopping/models/product.dart';
import '../constant.dart';

class ShoppingCartAndBuy extends StatefulWidget {
  const ShoppingCartAndBuy({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  _ShoppingCartAndBuyState createState() => _ShoppingCartAndBuyState();
}

class _ShoppingCartAndBuyState extends State<ShoppingCartAndBuy> {
  CounterWithFavouriteItem counterWithFavouriteItem =
      new CounterWithFavouriteItem();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPaddin * 2),
      child: Row(children: [
        Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: textColor),
          ),
          child: IconButton(
            color: widget.products.color,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              setState(() {});
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddin),
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(widget.products.color),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: widget.products.color)),
                  ),
                ),
                onPressed: () {
                  setState(() {});
                },
                child: Text(
                  'Buy now'.toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
