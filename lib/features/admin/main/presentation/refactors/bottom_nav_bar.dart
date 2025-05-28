import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/common/animations/animate_do.dart';
import 'package:shop_app/core/common/style/images/app_images.dart';
import 'package:shop_app/core/enums/nav_bar_enum.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/routes/app_routes.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/admin/main/presentation/widgets/icon_tap_nav_bar.dart';
import 'package:shop_app/features/admin/main/presentation/widgets/notification_bar_icon.dart';
import 'package:shop_app/features/super_admin/add_notifications/presentation/screens/add_notifications_screen.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 65.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              // Icons
              Column(
                children: [
                  SizedBox(height: 10.h),
                  Container(
                    height: 55.h,
                    color: context.color.navBarbg,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 45.h,
                        width: 300.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: BlocBuilder<MainCubit, MainState>(
                            builder: (context, state) {
                              final cubit = context.read<MainCubit>();
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //Home Screen
                                  IconTapNavBar(
                                    icon: AppImages.homeTab,
                                    isSelected:
                                        cubit.navBarEnum == NavBarEnum.home,
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.home,
                                      );
                                    },
                                  ),
                                  //Notification Screen
                                  GestureDetector(
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.notifications,
                                      );
                                    },
                                    child: NotificationBarIcon(
                                      isSelected:
                                          cubit.navBarEnum ==
                                          NavBarEnum.notifications,
                                    ),
                                  ),

                                  //Favourites Screen
                                  IconTapNavBar(
                                    icon: AppImages.favouritesTab,
                                    isSelected:
                                        cubit.navBarEnum ==
                                        NavBarEnum.favorites,
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.favorites,
                                      );






                                    },
                                  ),
                                  //Profile Screen
                                  IconTapNavBar(
                                    icon: AppImages.profileTab,
                                    isSelected:
                                        cubit.navBarEnum == NavBarEnum.profile,
                                    onTap: () {
                                      cubit.selectedNavBarIcons(
                                        NavBarEnum.profile,
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // BackGround Icon
              // Positioned(
              //   top: -12,
              //   right: -8,
              //   child: Container(
              //     height: 100.h,
              //     width: 100.w,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(context.assets.bigNavBar!),
              //       ),
              //     ),
              //   ),
              // ),
              // //Car Icon
              // Positioned(
              //   left: 35,
              //   top: 17,
              //   child: SvgPicture.asset(
              //     AppImages.carShop,
              //     color: Colors.white,
              //     height: 20.h,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
