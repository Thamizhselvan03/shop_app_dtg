import 'package:flutter/material.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';


class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: 'user',
      ),
      body: Center(
        child: Text('user screen', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
