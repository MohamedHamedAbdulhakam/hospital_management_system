part of 'image_picker_cubit.dart';

abstract class ImagePickerState {}

class ImagePickerInitial extends ImagePickerState {}

class ImagePickerLoading extends ImagePickerState {}

class ImagePickerLoaded extends ImagePickerState {
  final File image;
  ImagePickerLoaded(this.image);
}

class ImagePickerError extends ImagePickerState {
  final String message;
  ImagePickerError(this.message);
}
