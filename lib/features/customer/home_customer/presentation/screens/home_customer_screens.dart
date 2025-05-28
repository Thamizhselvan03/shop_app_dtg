import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';

import 'package:shop_app/features/customer/home_customer/bloc/get_all_products_bloc.dart';
import 'package:shop_app/features/customer/home_customer/presentation/refractors/home_customer_body.dart';

class HomeCustomerScreen extends StatelessWidget {
  const HomeCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllProductsBloc(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        appBar: AdminAppBar(
          title: 'User',
          isMain: true,
          backgroundColor: ColorsLight.pinkDark,
        ),
        body: HomeCustomerBody(),
      ),
    );
  }
}
