import 'dart:developer';

import 'package:flutter/material.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
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
