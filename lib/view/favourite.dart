import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/auth/dynamicColor.dart';
import 'package:test/components/textStyling.dart';
import 'package:test/controller/authController.dart';
import 'package:test/view/detail.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.find();
    return Scaffold(
      body: ListView.builder(
        itemCount: favoriteController.favorites.length,
        itemBuilder: (context, index) {
          Product product = favoriteController.favorites[index];
          return GestureDetector(
            onTap: () {},
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
                              product.image,
                            ),
                          ),
                          Container(
                            height: Get.height * .04,
                            width: Get.width * 0.40,
                            margin: const EdgeInsets.only(left: 20),
                            color: DynamicColor.blueColor,
                            child: Center(
                                child: Text(
                              '\$${product.price}',
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
