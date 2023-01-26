import 'package:flutter/material.dart';
import 'package:hw_11/pages/info.dart';
import 'package:hw_11/pages/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final green = const Color.fromARGB(255, 122, 170, 96);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: green,
                        thickness: 3,
                      ),
                    ),
                    Text(
                      'Least Price',
                      style: TextStyle(color: green, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 550,
                  child: PageView(
                    controller: controller,
                    children: [
                      productShow(
                        product: product1,
                      ),
                      productShow(
                        product: product2,
                      ),
                      productShow(
                        product: product3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Sections(
              img: 'images/vege.png',
              paddingL: 26,
              paddingR: 26,
              text: 'Vegetable Seeds',
            ),
            const SizedBox(
              height: 32,
            ),
            const Sections(
              img: 'images/fruits.png',
              paddingL: 78,
              paddingR: 78,
              text: 'Fruit Seeds',
            ),
            const SizedBox(
              height: 32,
            ),
            const Sections(
              img: 'images/herb.png',
              paddingL: 75,
              paddingR: 74,
              text: 'Herb Seeds',
            ),
            const SizedBox(
              height: 32,
            ),
            const Sections(
              img: 'images/flower.png',
              paddingL: 58,
              paddingR: 58,
              text: 'Flower Seeds',
            ),
            const SizedBox(
              height: 32,
            ),
            const Sections(
              img: 'images/greens.png',
              paddingL: 66,
              paddingR: 67,
              text: 'Microgreens',
            ),
            const SizedBox(
              height: 32,
            ),
            const Sections(
              img: 'images/garden.png',
              paddingL: 32,
              paddingR: 32,
              text: 'Gardening Tools',
            ),
            const Info()
          ],
        ),
      ),
    );
  }
}

class Sections extends StatelessWidget {
  final img;
  final text;
  final double paddingL;
  final double paddingR;
  const Sections({
    Key? key,
    required this.img,
    required this.paddingL,
    required this.paddingR,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(img),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              color: Colors.grey.withOpacity(0.8),
              child: Padding(
                padding: EdgeInsets.fromLTRB(paddingL, 0, paddingR, 0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class productShow extends StatelessWidget {
  final Products product;
  const productShow({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 122, 170, 96),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        product.img,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      product.name,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 122, 170, 96),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          product.price.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          ' SAR',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            });
      },
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      product.img,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Text(
                      product.name,
                      style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 105, 147, 83)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 12, 30, 0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Text(
                            product.price.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            ' SAR',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 30,
            child: InkWell(
              onTap: () {
                cart.add(product);
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 122, 170, 96),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
