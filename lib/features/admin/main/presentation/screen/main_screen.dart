import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/di/injection_container.dart';
import 'package:shop_app/core/enums/nav_bar_enum.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/admin/admin_home/presentation/screens/admin_home_screen.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/admin/main/presentation/refactors/bottom_nav_bar.dart';
import 'package:shop_app/features/admin/main/presentation/refactors/main_customer_app_bar.dart';
import 'package:shop_app/features/customer/home_customer/presentation/screens/home_customer_screens.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MainCubit>(),
      child: Scaffold(
        appBar: const MainAdminAppBar(),
        body: Container(
          constraints: const BoxConstraints.expand(),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage(context.assets.homeBg!),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<MainCubit, MainState>(
                  builder: (context, state) {
                    final cubit = context.read<MainCubit>();
                    if (cubit.navBarEnum == NavBarEnum.notifications) {
                      // return const NotificationScreen();
                    } else if (cubit.navBarEnum == NavBarEnum.favorites) {
                      // return const FavoritesScreen();
                    } else if (cubit.navBarEnum == NavBarEnum.profile) {
                      // return const ProfileScreen();
                    }
                    return const HomeAdminScreen();
                  },
                ),
              ),
              const MainBottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
