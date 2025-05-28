import 'package:flutter/material.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';
import 'package:shop_app/features/admin/presentation/refractors/admin_home_body.dart';
import 'package:shop_app/features/super_admin/dashboard/presentation/refractors/dashboard_body.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: 'Admin',
      ),
      body: AdminHomeBody(),
    );
  }
}
