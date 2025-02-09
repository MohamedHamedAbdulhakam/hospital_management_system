import 'dart:io';

import 'package:image_picker/image_picker.dart';

import '../../../../core/utils/helper/image_picker_helper.dart';

class ImagePickerRepository {
  Future<File?> pickImage(ImageSource source) async {
    return await ImagePickerHelper.pickImage(source);
  }
}
