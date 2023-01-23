import 'package:flutter/material.dart';
import 'package:hw_7/components/bottom_bar.dart';
import 'package:hw_7/components/email.dart';

import '../components/connect_account.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Track your orders",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                    Text(
                      "Importing form ",
                      style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 4,
                ),
                Email("assets/images/shop.png", "Shop Network", "judy.mobbin@gmail.com"),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                Email("assets/images/gmail.png", "Gmail inbox", "judy.mobbin@gmail.com"),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                    Text(
                      "Add another source",
                      style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                    Text(
                      "Connect email inbox",
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                ),
                CoonectEmail("assets/images/gmail.png", "Connect Gmail"),
                CoonectEmail("assets/images/outlook.jpeg", "Connect Outlook"),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.center, children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: SizedBox(
                            height: 60,
                            width: 30,
                            child: Icon(
                              Icons.check_box,
                              color: Colors.deepPurple,
                            )),
                      ),
                    ]),
                    const SizedBox(
                      width: 4,
                    ),
                    SizedBox(
                      height: 40,
                      width: 310,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "Shop has been independency verified to secuely handle emails",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, bottom: 1),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 360,
                          child: Expanded(
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                text: '',
                                style: TextStyle(color: Colors.purpleAccent),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Read our Privacy Policy',
                                      style: TextStyle(
                                          color: Colors.purpleAccent, fontSize: 16, fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                    Text(
                      "Connect email inbox",
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                ),
                CoonectEmail("assets/images/amazon.png", "Connect Amazon"),
                const Spacer(),
                const Positioned(
                  bottom: 0,
                  child: BottomBar(),
                )
              ]),
        ));
  }
}
