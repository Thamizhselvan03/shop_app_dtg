import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/enums/nav_bar_enum.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/routes/app_routes.dart';
import 'package:shop_app/features/admin/admin_home/presentation/screens/admin_home_screen.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/admin/main/presentation/screen/main_screen.dart';
import 'package:shop_app/features/admin/main/presentation/widgets/drawer_expansion.dart';
import 'package:shop_app/features/admin/main/presentation/widgets/drawer_header.dart';
import 'package:shop_app/features/admin/main/presentation/widgets/drawer_tile.dart';
import 'package:shop_app/features/admin/product_management/presentation/screens/add_product_screens.dart';

class TwitterDrawer extends StatelessWidget {
  const TwitterDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainCubit>();
    return Drawer(
      shape: const BeveledRectangleBorder(),
      //backgroundColor: const Color(0xFFF5FCF9),
      width: MediaQuery.sizeOf(context).width - 73,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              const TwitterDrawerHeader(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Divider(thickness: 0.1),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TwitterDrawerTile(
                          iconPath: Icons.dashboard,
                          title: 'Dashboard',
                          onTap: () {
                            cubit.selectedNavBarIcons(
                              NavBarEnum.home,
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MainScreen()),
                            );
                         //   Navigator.pop(context);

                          }),
                      const SizedBox(height: 10),
                      TwitterDrawerTile(
                          iconPath:Icons.shopping_basket,
                          title: 'Product Management',
                          onTap: () {          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AddProductsScreenAdmin()),
                          );
                          }),
                      const SizedBox(height: 10),
                      TwitterDrawerTile(
                          iconPath: Icons.people,
                          title: 'User Management',
                          onTap: () {        Navigator.pop(context);
                          }),
                      const SizedBox(height: 10),
                      TwitterDrawerTile(
                          iconPath:Icons.payment,
                          title: 'Membership',
                          onTap: () {        Navigator.pop(context);
                          }),
                      const SizedBox(height: 10),
                      TwitterDrawerTile(
                          iconPath: Icons.settings,
                          title: 'Settings',
                          onTap: () {        Navigator.pop(context);
                          }),
                      const SizedBox(height: 10),
                      TwitterDrawerTile(
                          iconPath: Icons.security,
                          title: 'Security',
                          onTap: () { Navigator.pop(context);}),
                      const SizedBox(height: 10),
                      TwitterDrawerTile(
                          iconPath:Icons.logout,
                          title: 'Logout',
                          onTap: () {
                            context.pushNamedAndRemoveUntil(AppRoutes.mainCustomer);
                            Navigator.pop(context);}),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Divider(thickness: 0.1),
                      ),
                      const SizedBox(height: 10),
                /*      TwitterDrawerExpansionTile(
                          title: 'Settings & Support',
                          children: [
                            TwitterDrawerTile(
                              iconPath: Icons.logout,
                              title: 'Settings & Privacy',
                              onTap: () {},
                              isSubTile: true,
                            ),
                            TwitterDrawerTile(
                              iconPath:Icons.logout,
                              title: 'Help Center',
                              onTap: () {},
                              isSubTile: true,
                            )
                          ])*/
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   height: 45,
          //   alignment: Alignment.centerLeft,
          //   padding: const EdgeInsets.only(left: 16),
          //   width: double.infinity,
          //   // color: const .withAlpha(10),
          //   child: const Icon(Icons.brightness_2, color: Colors.black),
          // )
        ],
      ),
    );
  }
}
