import 'package:flutter/material.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';
import 'package:shop_app/features/super_admin/dashboard/presentation/refractors/dashboard_body.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: 'Super admin',
      ),
      body: DashboardBody(),
    );
  }
}
