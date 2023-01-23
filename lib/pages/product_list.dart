import 'package:flutter/material.dart';
import 'package:hw_7/pages/product_details.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Product> product = [
    Product("Glass", "assets/images/glass.png", "white Glass ", "\$15"),
    Product("Hand Bag ", "assets/images/hand_bag_1.png", "white Hand Bag ", "\$15"),
    Product("Hand Bag ", "assets/images/hand_bag_2.png", " Hand Bag  ", "\$15"),
    Product("Hat", "assets/images/hat.png", "Beach Hat ", "\$15"),
    Product("Glass", "assets/images/glass.png", "white Glass ", "\$15"),
    Product("Hand Bag ", "assets/images/hand_bag_1.png", "white Hand Bag ", "\$15"),
    Product("Hand Bag ", "assets/images/hand_bag_2.png", " Hand Bag  ", "\$15"),
    Product("Hat", "assets/images/hat.png", "Beach Hat ", "\$15"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "Track your orders",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Icon(Icons.upload),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, _) => const SizedBox(
            height: 8,
            // width: 10,
          ),
          itemCount: 7,
          itemBuilder: (context, index) =>
              Padding(padding: const EdgeInsets.all(2), child: buildCard(product: product[index], context: context)),
        )));
  }
}

Widget buildCard({required BuildContext context, required Product product}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetails(pro: product)),
                  );
                },
                child: Stack(children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 20,
                      child: SizedBox(
                          height: 40.0,
                          width: 40.0,
                          child: FittedBox(
                            child: FloatingActionButton(
                                elevation: 2,
                                backgroundColor: Colors.white,
                                onPressed: () {},
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )),
                          ))),
                ]),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product.description,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product.price,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetails(pro: product)),
                  );
                },
                child: Stack(children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 20,
                      child: SizedBox(
                          height: 40.0,
                          width: 40.0,
                          child: FittedBox(
                            child: FloatingActionButton(
                                elevation: 2,
                                backgroundColor: Colors.white,
                                onPressed: () {},
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )),
                          ))),
                ]),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product.description,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product.price,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );

class Product {
  final String name;
  final String image;
  final String description;
  final String price;

  Product(this.name, this.image, this.description, this.price);
}
