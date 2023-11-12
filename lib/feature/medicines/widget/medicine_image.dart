import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MedicineImage extends StatefulWidget {
  const MedicineImage({
    super.key,
    required File? image,
    required this.onChanged,
  }) : _image = image;

  final File? _image;
  final Function(File?) onChanged;

  @override
  State<MedicineImage> createState() => _MedicineImageState();
}

class _MedicineImageState extends State<MedicineImage> {
  Future<void> _pickImage(bool isCamera) async {
    final file = await ImagePicker().pickImage(source: isCamera ? ImageSource.camera : ImageSource.gallery);
    if (file == null) return;
    widget.onChanged(File(file.path));
  }

  Future<void> _onPressed() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Выберите источник'),
        actions: [
          TextButton(
            onPressed: () {
              _pickImage(true);
              Navigator.pop(context);
            },
            child: const Text('Камера'),
          ),
          TextButton(
            onPressed: () {
              _pickImage(false);
              Navigator.pop(context);
            },
            child: const Text('Галерея'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: widget._image != null
                ? Stack(
                    children: [
                      Positioned.fill(
                        child: Image.file(
                          widget._image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: IconButton(
                          onPressed: () => widget.onChanged(null),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.black.withOpacity(0.5),
                          ),
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                : IconButton(
                    onPressed: _onPressed,
                    icon: const Icon(Icons.add_a_photo_outlined),
                  ),
          ),
        ),
      ),
    );
  }
}
