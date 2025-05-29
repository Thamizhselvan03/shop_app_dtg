import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/app/app_cubit/app_cubit.dart';
import 'package:shop_app/core/app/connectivity_controller.dart';
import 'package:shop_app/core/app/env.varaible.dart';
import 'package:shop_app/core/common/screen/no_network_screen.dart';
import 'package:shop_app/core/common/style/theme/app_theme.dart';
import 'package:shop_app/core/di/injection_container.dart';
import 'package:shop_app/core/language/app_localizations_setup.dart';
import 'package:shop_app/core/routes/app_routes.dart';
import 'package:shop_app/core/services/shared_pref/pref_keys.dart';
import 'package:shop_app/core/services/shared_pref/shared_pref.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create:
                (context) =>
                    sl<AppCubit>()
                      ..changeAppThemeMode(
                        sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
                      )
                      ..getSavedLanguage(),

            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                  theme: themeLight(),
                  //  theme: cubit.isDark ? themeLight() : themeDark(),
                    locale: Locale(cubit.currentLangCode),
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    navigatorKey: sl<GlobalKey<NavigatorState>>(),
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute:
                        // SharedPref().getString(PrefKeys.accessToken) != null
                        //     ? SharedPref().getString(PrefKeys.userRole) !=
                        //             'admin'
                        //         ? AppRoutes.homeCustomer
                        //         : AppRoutes.homeAdmin
                        //     : 
                            AppRoutes.login,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        } else {
          return const MaterialApp(home: NoNetwork());
        }
      },
    );
  }
}
