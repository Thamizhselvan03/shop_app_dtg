import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/style/images/app_images.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';
import 'package:shop_app/core/utils/admin_drawer_list.dart';
import 'package:shop_app/features/super_admin/dashboard/presentation/screens/dashboard_screen.dart';

class HomeSuperAdminScreen extends StatefulWidget {
  const HomeSuperAdminScreen({super.key});

  @override
  State<HomeSuperAdminScreen> createState() => _HomeSuperAdminScreenState();
}

class _HomeSuperAdminScreenState extends State<HomeSuperAdminScreen> {
  Widget page = const DashBoardScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
        builder: (context) {
          return MenuAdminScreen(
            onPagechanged: (a) {
              setState(() {
                page = a;
              });
              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
      mainScreen: page,
      borderRadius: 24,
      showShadow: true,
      drawerShadowsBackgroundColor: ColorsDark.black1.withValues(alpha: 0.6),
      menuBackgroundColor: ColorsDark.blueDark,
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  const MenuAdminScreen({required this.onPagechanged, super.key});

  final void Function(Widget) onPagechanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.blueDark,
      appBar: const AdminAppBar(
        isMain: false,
        backgroundColor: ColorsDark.blueDark,
        title: 'Shop app',
      ),
      body: Column(
        children: [
          Column(
            children: adminDrawerList(context)
                .map(
                  (e) => ListTile(
                    title: e.title,
                    leading: e.icon,
                    onTap: () {
                      onPagechanged(e.page);
                    },
                  ),
                )
                .toList(),
          ),

          Expanded(child: Image.asset(AppImages.drawerImage)),
        ],
      ),
    );
  }
}
