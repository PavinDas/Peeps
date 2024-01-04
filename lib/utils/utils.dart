import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peeps/constants/colors.dart';

picImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _file = await _imagePicker.pickImage(source: source);

  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No image selected');
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: mainColor,
      content: Center(
        child: Text(
          content,
          style: const TextStyle(
            color: textColor,
          ),
        ),
      ),
    ),
  );
}
