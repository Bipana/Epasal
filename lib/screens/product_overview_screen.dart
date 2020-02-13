import 'package:epasal/model/product.dart';
import 'package:epasal/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: "first",
        title: "Watch",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageURL: " https://i.ytimg.com/vi/DBYWaIge22g/maxresdefault.jpg",
        isFavourite: false),
    Product(
        id: "second",
        title: "Shoes",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageURL:
            " http://images3.revzilla.com/product_images/0097/1826/alpinestars_shoe_anaheim.jpg",
        isFavourite: false),
    Product(
        id: "third",
        title: "Mobile",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageURL:
            "https://cdn.dxomark.com/wp-content/uploads/2018/09/gm9-1024x768.jpg ",
        isFavourite: false),
    Product(
        id: "fourth",
        title: "Laptop",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageURL:
            " https://i1.wp.com/laptopmedia.com/wp-content/uploads/2017/08/1DL54EA-ABU_1_1750x1285.jpg",
        isFavourite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Pasal"),
      ),
      body: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (ctx, i) {
            return ProductItem(
              loadedProducts[i].imageURL,
              loadedProducts[i].title,
              loadedProducts[i].price,
            );
          }),
    );
  }
}
