import 'package:flutter/material.dart';

class ScanImage extends StatelessWidget {
  const ScanImage({super.key, required this.image});
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: image.image),
      ),
    );
  }
}
