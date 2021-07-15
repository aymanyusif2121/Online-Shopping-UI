import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shopping/constant.dart';
import 'package:online_shopping/details/product_title_with_image.dart';
import 'package:online_shopping/details/shopping_cart_and_buy.dart';
import 'package:online_shopping/models/product.dart';

import 'color_and_size.dart';
import 'counter_with_favourite_item.dart';

class DetailBody extends StatefulWidget {
  final Product products;

  DetailBody({Key? key, required this.products}) : super(key: key);

  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: _size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: _size.height * 0.34),
                  padding: EdgeInsets.only(
                    top: _size.height * 0.13,
                    right: defaultPaddin / 2,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPaddin),
                    child: Column(
                      children: [
                        ColorAndSize(products: widget.products),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPaddin * 1.5),
                          child: Text(
                            widget.products.description,
                            style: TextStyle(height: 1.5, wordSpacing: 2.5),
                          ),
                        ),
                        CounterWithFavouriteItem(),
                        ShoppingCartAndBuy(products: widget.products)
                      ],
                    ),
                  ),
                ),
                ProductTitleWithImage(products: widget.products),
              ],
            ),
          )
        ],
      ),
    );
  }
}
