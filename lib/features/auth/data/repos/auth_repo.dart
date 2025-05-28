// import 'package:shopping/core/services/graphql/api_result.dart';
// import 'package:shopping/core/utils/app_strings.dart';
// import 'package:shopping/features/auth/data/data_source/auth_data_source.dart';
// import 'package:shopping/features/auth/data/models/login_request_body.dart';
// import 'package:shopping/features/auth/data/models/login_response.dart';
// import 'package:shopping/features/auth/data/models/sign_up_request_body.dart';
// import 'package:shopping/features/auth/data/models/sign_up_response.dart';
// import 'package:shopping/features/auth/data/models/user_role_response.dart';

// class AuthRepo {
//   AuthRepo(this._dataSource);

//   final AuthDataSource _dataSource;
//   //Login
//   Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
//     try {
//       final response = await _dataSource.login(body: body);
//       return ApiResult.success(response);
//     } catch (error) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }

//   //Get user role
//   Future<UserRoleResponse> userRole(String userRole) async {
//     final response = await _dataSource.userRole(userRole);
//     return response;
//   }

//   //SignUp
//   Future<ApiResult<SignUpResponse>> signUp(SignUpRequestBody body) async {
//     try {
//       final response = await _dataSource.signUp(body: body);
//       return ApiResult.success(response);
//     } catch (error) {
//       return const ApiResult.failure('Please, try agian we have error');
//     }
//   }
// }
