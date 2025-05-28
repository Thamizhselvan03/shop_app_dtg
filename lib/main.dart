import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/app/bloc_observer.dart';
import 'package:shop_app/core/app/env.varaible.dart';
import 'package:shop_app/core/di/injection_container.dart';
import 'package:shop_app/core/services/shared_pref/shared_pref.dart';
import 'package:shop_app/shop_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await SharedPref().instantiatePreferences();
  await setupInjector();
  Bloc.observer = AppBlocObserver();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const ShopApp());
  });
}
