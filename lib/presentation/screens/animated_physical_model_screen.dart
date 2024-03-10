import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AnimatedPhysicalModelPage extends StatelessWidget {
  const AnimatedPhysicalModelPage({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Animated Physical Model',
                style: Theme.of(context).textTheme.bodyLarge),
            const AnimatedPhysicalModelAnimation(),
          ],
        ),
      );
}
