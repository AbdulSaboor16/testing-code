import 'package:get/get.dart';
import 'package:test/view/detail.dart';

class FavoriteController extends GetxController {
  RxList<Product> favorites = <Product>[].obs;
  RxList<Product> adds = <Product>[].obs;

  void add(Product product) {
    favorites.add(product);
  }

  void addToFavorites(Product product) {
    favorites.add(product);
  }

  void removeFromFavorites(Product product) {
    favorites.remove(product);
  }
}
