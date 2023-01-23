import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              decoration: const BoxDecoration(),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                    )
                  ])),
          Container(
              decoration: const BoxDecoration(),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    )
                  ])),
          Container(
            decoration: const BoxDecoration(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [Icon(Icons.card_travel, color: Colors.grey)]),
          ),
          Container(
              decoration: const BoxDecoration(),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.pages,
                      color: Colors.grey,
                    )
                  ])),
          Container(
            decoration: const BoxDecoration(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [Icon(Icons.person, color: Colors.grey)]),
          ),
        ],
      ),
    );
  }
}
