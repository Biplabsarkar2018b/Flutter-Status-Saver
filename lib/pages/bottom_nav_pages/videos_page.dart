import 'package:flutter/material.dart';
import 'package:status_saver/models/video_view.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => VideoView())));
                }),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                ),
              );
            })),
      ),
    );
  }
}
