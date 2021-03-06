import 'package:flutter/material.dart';

class Product {
  final String title, image, description;
  final int size, id, price;
  final Color color;

  Product({
    required this.title,
    required this.color,
    required this.image,
    required this.size,
    required this.id,
    required this.price,
    required this.description,
  });
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

Map<int, List> categories = {
  0: [
    Product(
        id: 1,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 2,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
    Product(
        id: 7,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 24,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 34,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 324,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 45,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 68,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
  ],
  1: [
    Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
    Product(
        id: 71,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 92,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 83,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 664,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 135,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 4326,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
  ],
  2: [
    Product(
        id: 1234,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 4232,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
  ],
  3: [
    Product(
        id: 1,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 2,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
    Product(
        id: 992,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description: dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
  ]
};

List products = List.generate(4, (index) => categories[index]);
