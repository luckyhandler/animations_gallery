import 'package:flutter/material.dart';

class AnimatedPhysicalModelAnimation extends StatefulWidget {
  const AnimatedPhysicalModelAnimation({super.key});

  @override
  State<AnimatedPhysicalModelAnimation> createState() =>
      _AnimatedPhysicalModelAnimationState();
}

class _AnimatedPhysicalModelAnimationState
    extends State<AnimatedPhysicalModelAnimation> {
  bool _elevationActive = true;

  @override
  Widget build(BuildContext context) => AnimatedPhysicalModel(
        shape: BoxShape.rectangle,
        elevation: _elevationActive ? 16 : 0,
        borderRadius: BorderRadius.circular(32.0),
        color: _elevationActive ? Colors.blue : Colors.blueGrey,
        shadowColor: Colors.black,
        curve: Curves.easeInOutCubic,
        duration: const Duration(seconds: 1),
        child: TextButton(
          onPressed: () => setState(() => _elevationActive = !_elevationActive),
          child: const Text(
            'Click button',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}
