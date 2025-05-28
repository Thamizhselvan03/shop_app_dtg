import 'package:flutter/material.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: 'Notification',
      ),
      body: Center(
        child: Text(
          'Add Notification screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
