import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common/screen/under_build_screen.dart';
import 'package:shop_app/core/di/injection_container.dart';
import 'package:shop_app/core/routes/base_routes.dart';
import 'package:shop_app/features/admin/admin_home/presentation/screens/admin_home_screen.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/admin/main/presentation/screen/main_screen.dart';
import 'package:shop_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shop_app/features/auth/presentation/screens/login_screen.dart';
import 'package:shop_app/features/auth/presentation/screens/otp_screen.dart';
import 'package:shop_app/features/customer/home_customer/presentation/screens/home_customer_screens.dart';
import 'package:shop_app/features/super_admin/home_admin/presentation/screens/home_admin_screen.dart';

class AppRoutes {
  static const String login = 'login';
  static const String otp = 'otp';
  static const String homeAdmin = 'homeAdmin';
  static const String homeSuperAdmin = 'homeSuperAdmin';
  static const String homeCustomer = 'homecustoer';
  static const String demo = 'demo';
  static const String mainCustomer = 'main-screen';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );

      case otp:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: const OtpScreen(),
          ),
        );
      //   case signUp:
      // return BaseRoute(
      //   page: MultiBlocProvider(
      //     providers: [
      //       BlocProvider(create: (context) => sl<UploadImageCubit>()),
      //       BlocProvider(create: (context) => sl<AuthBloc>()),
      //     ],
      //     child: const SignUpScreen(),
      //   ),
      // );
      // case demo:
      //   return BaseRoute(page: const CartScreen());
      case homeAdmin:
        return BaseRoute(page: const HomeAdminScreen());
      case homeSuperAdmin:
        return BaseRoute(page: const HomeSuperAdminScreen());
      case homeCustomer:
        return BaseRoute(page: const HomeCustomerScreen());
      case mainCustomer:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<MainCubit>(),
            child: const MainScreen(),
          ),
        );

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
