import 'package:animations_gallery/presentation/screens/animated_physical_model_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Animation Gallery'),
      ),
      body: PageView(
        children: const <Widget>[
          AnimatedPhysicalModelPage(),
        ],
      )
    );
  }
}
