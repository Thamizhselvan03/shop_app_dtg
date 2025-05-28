import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/core/utils/image_pick.dart';

part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit() : super(UploadImageState.initial());

  // final UploadImageRepo _repo;
  String getImageUrl = '';

  // pick image and save it in file and upload it to server
  Future<void> uploadImage() async {
    final pickedImage = await ImagePickUtils().pickImage();
    if (pickedImage == null) return;

    emit(const UploadImageState.loading());
    // final result = await _repo.uploadImage(pickedImage);

    // result.when(
    //   success: (image) {
    //     getImageUrl = image.location ?? '';
    //     emit(const UploadImageState.success());
    //   },
    //   failure: (error) {
    //     emit(UploadImageState.error(error: error));
    //   },
    // );
  }

  void removeImage() {
    getImageUrl = '';

    emit(UploadImageState.removeImage(imageUrl: getImageUrl));
  }
}
