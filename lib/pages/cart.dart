import 'package:flutter/material.dart';
import 'package:hw_11/pages/products.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (cart.isEmpty) {
      body = const emptyCart();
    } else {
      body = const nonemptyCart();
    }

    return body;
  }
}

class emptyCart extends StatelessWidget {
  const emptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'My cart',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 240,
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 122, 170, 96),
                borderRadius: BorderRadius.all(Radius.circular(90)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.work_off_outlined,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Sorry, your cart is empty',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 98, 98, 98)),
            ),
          ],
        )
      ],
    );
  }
}

class cartP extends StatelessWidget {
  final Products product;
  const cartP({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(19, 0, 19, 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 215, 212, 212),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset(
                      product.img,
                      width: 90,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        product.name,
                        maxLines: 3,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Text(product.price)
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class nonemptyCart extends StatelessWidget {
  const nonemptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
            child: Text(
          'My cart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        )),
        const SizedBox(
          height: 40,
        ),
        for (var products in cart)
          cartP(
            product: products,
          ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 30),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 122, 170, 96),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Submit Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
