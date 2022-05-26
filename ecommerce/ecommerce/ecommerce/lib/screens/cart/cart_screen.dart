import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalPrice = 0;

  void _calculateTotalPrice() {
    totalPrice = 0;
    if (Cart.cart.isEmpty) {
      totalPrice = 0;
    } else {
      for (int i = 0; i < Cart.cart.length; i++) {
        totalPrice += Cart.cart.keys.toList()[i].price;
      }
    }
  }

  @override
  void initState() {
    _calculateTotalPrice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Корзина",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Cart.cart.length > 0
            ? ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 20.0),
                itemBuilder: (BuildContext context, int index) =>
                    SwipeActionCell(
                        trailingActions: <SwipeAction>[
                      SwipeAction(
                          title: "Удалить",
                          onTap: (CompletionHandler handler) async {
                            Cart.cart.removeWhere((key, value) 
                            => key == Cart.cart.keys.toList()[index]);
                            setState(() {});
                          },
                          color: Colors.red),
                    ],
                        key: ObjectKey(Cart.cart.keys.toList()[index]),
                        child: ProductItem(
                            product: Cart.cart.keys.toList()[index])),
                itemCount: Cart.cart.length,
              )
            : Center(
                child: Text(
                  "Корзина пустая",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
        bottomNavigationBar: Cart.cart.isNotEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                height: 70.0,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Итого:",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '\$${totalPrice.toString()}',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        )
                      ],
                    )
                  ],
                ))
            : const SizedBox());
  }
}

class ProductItem extends StatelessWidget {
  ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      constraints: BoxConstraints(minHeight: 100.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
                spreadRadius: 7.0,
                blurRadius: 7.0,
                color: Colors.black54.withOpacity(.1),
                offset: const Offset(0, 3))
          ]),
      child: Row(
        children: [
          Image.asset(product.image, height: 130.0),
          const SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              Text(
                '\$${product.price.toString()}',
                style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
