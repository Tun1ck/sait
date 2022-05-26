import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Офисная сумка",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Сумка на пояс",
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
      title: "Старомодная",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Офисная сумка",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Офисная сумка",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

List<Product> productsZoloto = [
  Product(
    id: 1,
    title: "Кольцо звездочка",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/z1.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 2,
    title: "Сережки",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/z2.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 3,
    title: "Двойные кольца",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/z3.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 4,
    title: "Кольца с брилиантом",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/z4.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 5,
    title: "Кольцо с сапфиром",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/z5.png",
    color: Color(0xFFAEAEAE),
  ),
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
