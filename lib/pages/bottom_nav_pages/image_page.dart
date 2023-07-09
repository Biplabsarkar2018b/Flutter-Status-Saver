import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver/models/image_view.dart';
import 'package:status_saver/providers/get_statuses_provider.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<GetStatusesProvider>(context, listen: false).getStatuses();
  }

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
                      MaterialPageRoute(builder: ((context) => ImageView())));
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
