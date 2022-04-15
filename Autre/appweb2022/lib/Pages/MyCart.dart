import 'package:appweb2022/Controller/CartController.dart';
import 'package:appweb2022/Models/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final double screenSizeX = MediaQuery.of(context).size.width;
    final double screenSizeY = MediaQuery.of(context).size.height;
    return Obx(
      () => Scaffold(
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.pink,
                  width: screenSizeX,
                  height: screenSizeY * 0.75,
                  child: _buildListinsideMyCart(),
                ),
                Container(
                  color: Colors.transparent,
                  width: screenSizeX,
                  height: screenSizeY * 0.1,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text(
                        'Go back',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.transparent),
                      ),
                      onPressed: () {
                        debugPrint('move back');
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListinsideMyCart() {
    return ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CardProduct(
            controller: controller,
            index: index,
            product: controller.products.keys.toList()[index],
            quantity: controller.products.values.toList()[index],
          );
        });
  }
}

class CardProduct extends StatefulWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  const CardProduct({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
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
            backgroundImage: NetworkImage(widget.product.imageUrl),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              widget.product.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Expanded(
            child: Text(
              widget.product.price.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            widget.quantity.toString(),
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextButton.icon(
            onPressed: () {
              debugPrint('minus');

              widget.controller.deleteProduct(widget.product);
            },
            icon: Icon(
              Icons.remove_circle,
              color: Colors.black,
            ),
            label: const Text(''),
          ),
          TextButton.icon(
            onPressed: () {
              debugPrint('add');
              widget.controller.addProduct(widget.product);
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
