import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/repositories/image_picker_repository.dart';

part 'image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  final ImagePickerRepository _repository;

  ImagePickerCubit(this._repository) : super(ImagePickerInitial());

  Future<void> pickImage() async {
    emit(ImagePickerLoading());

    final File? imageGallery = await _repository.pickImage(
      ImageSource.gallery,
    );

    if (imageGallery != null) {
      emit(ImagePickerLoaded(imageGallery));
    } else {
      emit(ImagePickerError("No image selected"));
    }
  }
}
