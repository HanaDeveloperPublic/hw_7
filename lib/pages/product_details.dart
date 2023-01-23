import 'package:flutter/material.dart';
import 'package:hw_7/pages/product_list.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.pro});

  final Product pro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  // color: const Color(0xff00AEEF),
                  shape: BoxShape.rectangle,
                ),
                height: 400,
                width: 400,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      // left: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ProductList()),
                                );
                              },
                              child: SizedBox(
                                height: 35.0,
                                width: 35.0,
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const ProductList()),
                                      );
                                    },
                                    child: FittedBox(
                                      child: FloatingActionButton(
                                          elevation: 2,
                                          backgroundColor: Colors.grey.withOpacity(0.2),
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.white,
                                          )),
                                    )),
                              ))
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: 405,
                      // color: Colors.red,
                      child: Image.asset(
                        pro.image,
                      ),
                    ), //This

                    Positioned(
                      bottom: 10,
                      left: 330,
                      // left: 20,
                      child: FloatingActionButton(
                          elevation: 2,
                          backgroundColor: Colors.purpleAccent,
                          onPressed: () {},
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 40,
                width: 390,
                child: Text(
                  pro.name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.w600, fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text(
                      pro.description,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.purpleAccent.withOpacity(0.5), fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Text(
                    pro.price.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.purpleAccent.withOpacity(0.5), fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    child: Text(
                      "choose the color",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(10),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(10),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(10),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.brown, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(10),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(5.0)),
                    child: const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        border: OutlineInputBorder(),
                        hintText: 'Age',
                      ),
                    ),
                  )
                ],
              ),
            ])),
      ),
    );
  }
}
