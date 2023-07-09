import 'dart:developer';

import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  List<Widget> btnList = [Icon(Icons.download), Icon(Icons.share)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(btnList.length, (index) {
            return FloatingActionButton(
              heroTag: "$index",
              onPressed: (() {
                switch (index) {
                  case 0:
                    log("download");
                    break;
                  case 1:
                    log("share");
                    break;
                }
              }),
              child: btnList[index],
            );
          }),
        ),
      ),
    );
  }
}
