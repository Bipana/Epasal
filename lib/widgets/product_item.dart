import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final double price;
  ProductItem(this.imgUrl, this.title, this.price);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(""),
    );
  }
}
