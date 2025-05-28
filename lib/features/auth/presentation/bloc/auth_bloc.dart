import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
  //  on<LoginEvent>(_login);
   // on<SignUpEvent>(_signUp);
  }

  // final AuthRepo _repo;
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  // FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
  //   emit(const AuthState.loading());
  //   final result = await _repo.login(
  //     LoginRequestBody(
  //       mail: emailController.text.trim(),
  //       password: passwordController.text,
  //     ),
  //   );
  //   await result.when(
  //     success: (loginData) async {
  //       //user token
  //       final token = loginData.data.login.accessToken ?? '';
  //       // save user token shared preferance
  //       await SharedPref().setString(PrefKeys.accessToken, token);
  //       //get user role
  //       final user = await _repo.userRole(token);
  //       await SharedPref().setInt(PrefKeys.userId, user.userID ?? 0);
  //       await SharedPref().setString(PrefKeys.userRole, user.userRole ?? '');
  //       emit(AuthState.success(userRole: user.userRole ?? ''));
  //     },
  //     failure: (error) {
  //       emit(AuthState.error(error: error));
  //     },
  //   );
  // }

  // FutureOr<void> _signUp(SignUpEvent event, Emitter<AuthState> emit) async {
  //   emit(const AuthState.loading());

  //   final result = await _repo.signUp(
  //     SignUpRequestBody(
  //       email: emailController.text.trim(),
  //       password: passwordController.text,
  //       avatar: event.imageUrl,
  //       name: nameController.text.trim(),
  //     ),
  //   );
  //   result.when(
  //     success: (signUpData) {
  //       add(const AuthEvent.login());
  //     },
  //     failure: (error) {
  //       emit(AuthState.error(error: error));
  //     },
  //   );
  // }

}
