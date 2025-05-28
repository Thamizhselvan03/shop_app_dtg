// import 'package:image_picker/image_picker.dart';
// import 'package:shop_app/core/app/upload_image/data_source/upload_image_data_source.dart';
// import 'package:shop_app/core/app/upload_image/model/upload_image_response.dart';
// import 'package:shop_app/core/services/graphql/api_result.dart';
// import 'package:shop_app/core/utils/app_strings.dart';

// class UploadImageRepo {
//   UploadImageRepo(this._dataSource);

//   final UploadImageDataSource _dataSource;

//   Future<ApiResult<UploadImageResponse>> uploadImage(XFile imageFile) async {
//     try {
//       final response = await _dataSource.uploadImage(imageFile);
//       return ApiResult.success(response);
//     } catch (e) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
// }
