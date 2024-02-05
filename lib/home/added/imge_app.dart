import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatelessWidget {
  final PickedFile? imageFile;

  ImageScreen(this.imageFile, {super.key});
  PickedFile? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Image'),
      ),
      body: Center(
        child: imageFile != null
            ? Image.file(File(imageFile!.path))
            : const Icon(Icons.photo, size: 100),
      ),
    );
  }
}
