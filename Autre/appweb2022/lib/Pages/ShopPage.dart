import 'package:appweb2022/Controller/CartController.dart';
import 'package:appweb2022/Models/Product.dart';
import 'package:appweb2022/Pages/CartTotal.dart';
import 'package:appweb2022/Pages/MyCart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final double screenSizeX = MediaQuery.of(context).size.width;
    final double screenSizeY = MediaQuery.of(context).size.height;
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                width: screenSizeX,
                height: screenSizeY * 0.75,
                child: _buildListProduct()),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                child: const Text(
                  'Go to Cart',
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.transparent),
                ),
                onPressed: () {
                  debugPrint('move');
                  Get.to(() => MyCart());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: screenSizeX,
                height: screenSizeY * 0.1,
                child: CartTotal(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListProduct() {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.listProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogProductCard(index: index);
            }));
  }
}

class CatalogProductCard extends StatelessWidget {
  final CartController controller = Get.put(CartController());
  final int index;
  CatalogProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(Product.listProduct[index].imageUrl),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              Product.listProduct[index].name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Expanded(
            child: Text(
              Product.listProduct[index].price.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              debugPrint('add');
              if (kDebugMode) {
                print(Product.listProduct[index]);
              }
              controller.addProduct(Product.listProduct[index]);
              debugPrint(Product.listProduct[index].name);
            },
            icon: Icon(
              Icons.add_circle,
              color: Colors.black,
            ),
            label: const Text(''),
          ),
          TextButton.icon(
            onPressed: () {
              debugPrint('info');
            },
            icon: Icon(
              Icons.inbox_outlined,
              color: Colors.black,
            ),
            label: const Text(''),
          ),
        ],
      ),
    );
  }
}
