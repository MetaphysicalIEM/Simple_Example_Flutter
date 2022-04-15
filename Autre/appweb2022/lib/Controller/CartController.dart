import 'package:appweb2022/Models/Product.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final RxMap<dynamic, dynamic> _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    debugPrint('add product');
    Get.snackbar(
      'Product Added',
      'You have added the ${product.name} to the cart',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
    );
  }

  void deleteProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
    Get.snackbar(
      'Product deleted',
      'You have deleted the ${product.name} to the cart',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 1),
    );
  }

  void clearCart() {
    _products.clear();

    Get.snackbar(
      'Product deleted',
      'Cart is clear',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  get products => _products;

  get productSubTotal =>
      _products.entries.map((e) => e.key.price * e.value).toList();

  get total => _products.isEmpty
      ? '0'
      : _products.entries
          .map((e) => e.key.price * e.value)
          .toList()
          .reduce((value, element) => value + element)
          .toStringAsFixed(2);
}
