import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver/pages/bottom_nav_pages/image_page.dart';
import 'package:status_saver/pages/bottom_nav_pages/videos_page.dart';
import 'package:status_saver/providers/bottom_nav_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [const ImagePage(), const VideoPage()];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, nav, child) {
      return Scaffold(
        body: pages[nav.currIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            nav.changeIndex(value);
          }),
          currentIndex: nav.currIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "Images"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_front), label: "Videos")
          ],
        ),
      );
    });
  }
}
