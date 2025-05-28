import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/core/app/app_cubit/app_cubit.dart';

import 'package:shop_app/core/services/graphql/api_service.dart';
import 'package:shop_app/core/services/graphql/dio_factory.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
  await _initMain();
}

Future<void> _initCore() async {
  //final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();
  sl
    ..registerFactory(AppCubit.new)
   // ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
  //..registerFactory(() => UploadImageCubit(sl()));
  // ..registerLazySingleton(() => UploadImageRepo(sl()))
  // ..registerLazySingleton(() => UploadImageDataSource(sl()));
}

Future<void> _initAuth() async {
  sl.registerFactory(AuthBloc.new);
  // ..registerLazySingleton(() => AuthRepo(sl()))
  // ..registerLazySingleton(() => AuthDataSource(sl()));
}

Future<void> _initMain() async {
  sl.registerFactory(MainCubit.new);
}
