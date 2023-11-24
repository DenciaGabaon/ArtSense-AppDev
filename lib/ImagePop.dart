import 'package:flutter/material.dart';

class ImagePopup extends StatelessWidget {
  final String selectedImagePath;

  const ImagePopup({super.key, required this.selectedImagePath});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black.withOpacity(0),
      contentPadding: const EdgeInsets.all(0),

      content: ClipRRect(
          borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          selectedImagePath,
          fit: BoxFit.fitWidth, width: 433,
          height: 450,
        ),
      ),
    );
  }
}
