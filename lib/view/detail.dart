import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test/auth/dynamicColor.dart';
import 'package:test/components/textStyling.dart';
import 'package:test/controller/authController.dart';
import 'package:test/view/favourite.dart';

class Details extends StatefulWidget {
  final dynamic price;
  final String image;
  final String title;

  Details({
    Key? key,
    required this.price,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
      FavoriteController favoriteController = Get.put(FavoriteController());
  void addToFavorites() {
    Product product =
        Product(title: widget.title, price: widget.price, image: widget.image);
    Get.find<FavoriteController>().addToFavorites(product);

    setState(() {});
    Get.to(Next());
  }

  void removeFromFavorites() {
    Product product =
        Product(title: widget.title, price: widget.price, image: widget.image);
    Get.find<FavoriteController>().removeFromFavorites(product);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.find();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 300,
              width: Get.width,
              child: Image.network(
                widget.image,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price 0",
                  style: hkGrotestStyle(
                      fontSize: 18, color: DynamicColor.blackColor),
                ),
                IconButton(
                  onPressed: addToFavorites,
                  icon: const Icon(Icons.favorite_outline),
                ),
               
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Title Product \n${widget.title}",
              textAlign: TextAlign.center,
              style:
                  hkGrotestStyle(fontSize: 18, color: DynamicColor.blackColor),
            )
          ],
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final dynamic price;
  final String image;

  Product({required this.title, required this.price, required this.image});
}
