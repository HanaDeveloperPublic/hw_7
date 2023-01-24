import 'package:flutter/material.dart';
import 'package:hw_7/pages/categories.dart';
import 'package:hw_7/pages/product_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Splash> splash = [
    Splash("Beauty trend",
        "https://images.unsplash.com/photo-1590439471364-192aa70c0b53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Brand Spotlight",
        "https://images.unsplash.com/photo-1612817288484-6f916006741a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Splash("New Arrivals ",
        "https://images.unsplash.com/photo-1629198688000-71f23e745b6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Splash("Nail Care",
        "https://plus.unsplash.com/premium_photo-1664544673683-a4c9e942bc53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFpbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Post-summer",
        "https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Youthful skincare",
        "https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Beauty trend",
        "https://images.unsplash.com/photo-1590439471364-192aa70c0b53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Brand Spotlight",
        "https://images.unsplash.com/photo-1612817288484-6f916006741a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Splash("New Arrivals ",
        "https://images.unsplash.com/photo-1629198688000-71f23e745b6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Splash("Nail Care",
        "https://plus.unsplash.com/premium_photo-1664544673683-a4c9e942bc53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFpbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Post-summer",
        "https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Splash("Youthful skincare",
        "https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Text(""),
          toolbarHeight: 100.10, //set your height
          flexibleSpace: SafeArea(
            child: Container(
              color: Colors.white, // set your color
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey.withOpacity(0.2),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                                Text(
                                  "Search for anything",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Categories()),
                            );
                          },
                          child: const Icon(Icons.blender_outlined)),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 300.0, bottom: 1),
                    child: Text(
                      "Beauty",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                  ), // set an icon or image
                  // set your search bar setting
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, _) => const SizedBox(
            height: 11,
            // width: 10,
          ),
          itemCount: 7,
          itemBuilder: (context, index) =>
              Padding(padding: const EdgeInsets.all(2), child: buildCard(splash: splash[index], context: context)),
        )));
  }
}

Widget buildCard({required BuildContext context, required Splash splash}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Material(
              child: InkWell(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF4f35e2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey.withOpacity(0.3),
                      shape: BoxShape.rectangle,
                    ),
                    height: 200,
                    width: 200,
                    child: Image.network(
                      splash.image,
                    ),
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductList()),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    splash.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
        Column(
          children: [
            Material(
              child: InkWell(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF4f35e2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey.withOpacity(0.3),
                      shape: BoxShape.rectangle,
                    ),
                    height: 200,
                    width: 200,
                    child: Image.network(
                      splash.image,
                    ),
                  ),
                ]),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    splash.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ],
    );

class Splash {
  final String name;
  final String image;

  Splash(this.name, this.image);
}
