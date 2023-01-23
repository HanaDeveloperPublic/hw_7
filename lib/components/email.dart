import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  Email(this.image, this.email_title, this.email);
  String image;
  String email_title;
  String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(children: [
          SizedBox(height: 40, width: 40, child: Image.asset(image)),
        ]),
        const SizedBox(
          width: 4,
        ),
        SizedBox(
          height: 50,
          width: 200,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    email_title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text(email),
                ],
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
