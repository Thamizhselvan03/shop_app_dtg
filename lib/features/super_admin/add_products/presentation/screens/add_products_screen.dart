import 'package:flutter/material.dart';
import 'package:shop_app/core/common/style/colors/colors_dark.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: 'Products',
      ),
      body: Center(
        child: Text(
          'Add Products screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
