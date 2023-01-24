import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _categoriesState();
}

class _categoriesState extends State<Categories> {
  final List<Cat> cat = [
    Cat("Beauty trend",
        "https://images.unsplash.com/photo-1590439471364-192aa70c0b53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Brand Spotlight",
        "https://images.unsplash.com/photo-1612817288484-6f916006741a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Cat("New Arrivals ",
        "https://images.unsplash.com/photo-1629198688000-71f23e745b6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Cat("Nail Care",
        "https://plus.unsplash.com/premium_photo-1664544673683-a4c9e942bc53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFpbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Post-summer",
        "https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Youthful skincare",
        "https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Beauty trend",
        "https://images.unsplash.com/photo-1590439471364-192aa70c0b53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Brand Spotlight",
        "https://images.unsplash.com/photo-1612817288484-6f916006741a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Cat("New Arrivals ",
        "https://images.unsplash.com/photo-1629198688000-71f23e745b6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
    Cat("Nail Care",
        "https://plus.unsplash.com/premium_photo-1664544673683-a4c9e942bc53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFpbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Post-summer",
        "https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
    Cat("Youthful skincare",
        "https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXR5JTIwdHJlYXRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
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
                "Categories",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: cat.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                      title: Text(
                        cat[index].name,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(cat[index].image),
                        ),
                      )),
                ),
              );
            },
          ),
        ));
  }
}

class Cat {
  final String name;
  final String image;

  Cat(this.name, this.image);
}
