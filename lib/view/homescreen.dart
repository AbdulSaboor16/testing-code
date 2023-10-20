import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test/auth/dynamicColor.dart';
import 'package:test/components/textStyling.dart';
import 'package:test/controller/authController.dart';
import 'package:test/view/detail.dart';
import 'package:test/view/favourite.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> products = [];

  ScrollController scrollcontroller = ScrollController();
  int productlength = 0;
  @override
  void initState() {
    super.initState();
    fetchProducts();
    scrollcontroller.addListener(() {
      if (scrollcontroller.position.pixels ==
          scrollcontroller.position.maxScrollExtent) {
        if (products.length > 5 && productlength + 6 < products.length) {
          productlength = productlength + 2;
        }
        setState(() {});
        // You have reached the end of the list
        print("End of the list reached!");
      }
    });
  }

  Future<void> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      setState(() {
        productlength = 5;
        products = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.put(FavoriteController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(Next());
              },
              icon: Icon(Icons.favorite))
        ],
      ),
      body: ListView.builder(
        controller: scrollcontroller,
        itemCount: productlength,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var product = products[index];
          return GestureDetector(
            onTap: () {
              Get.to(Details(
                price: product['price'],
                image: product['image'],
                title: product['title'],
              ));
            },
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: Get.height * 0.18,
                            width: Get.width * 0.40,
                            margin: const EdgeInsets.only(left: 20),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            child: Image.network(
                              product['image'],
                            ),
                          ),
                          Container(
                            height: Get.height * .04,
                            width: Get.width * 0.40,
                            margin: const EdgeInsets.only(left: 20),
                            color: DynamicColor.blueColor,
                            child: Center(
                                child: Text(
                              '\$${product['price']}',
                              style: hkGrotestStyle(fontSize: 18),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
