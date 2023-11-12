import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    this.image,
    this.fit,
  });

  final String? image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return ColoredBox(
        color: Colors.grey.withOpacity(0.1),
        child: const Center(
          child: Icon(
            Icons.medication,
            color: Colors.grey,
            size: 48,
          ),
        ),
      );
    }

    return Image.network(
      image!,
      fit: fit ?? BoxFit.cover,
    );
  }
}
