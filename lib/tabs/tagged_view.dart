import 'package:flutter/material.dart';

class TaggedView extends StatelessWidget {
  const TaggedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
          'Nothing to show here...',
          textAlign: TextAlign.center,
        ),
    );
  }
}
