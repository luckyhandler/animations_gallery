import 'package:flutter/material.dart';

import 'animated_physical_model_screen.dart';

const defaultPadding = EdgeInsets.symmetric(horizontal: 8, vertical: 32);

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final pageController = PageController(
    viewportFraction: 0.8,
    initialPage: 0,
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animation Gallery'),
        ),
        body: PageView(
          controller: pageController,
          children: const <Widget>[
            Padding(
              padding: defaultPadding,
              child: AnimatedPhysicalModelPage(),
            ),
            Padding(
              padding: defaultPadding,
              child: AnimatedPhysicalModelPage(),
            ),
          ],
        ));
  }
}
