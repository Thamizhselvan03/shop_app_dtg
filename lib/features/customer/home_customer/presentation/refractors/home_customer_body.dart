import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/enums/nav_bar_enum.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/categories_tab.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/rack_list.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/search_for_users.dart';
import 'package:shop_app/features/super_admin/add_categories/presentation/screens/add_categories_screen.dart';

class HomeCustomerBody extends StatelessWidget {
  const HomeCustomerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search For Users
        const SearchForProducts(),
        SizedBox(height: 10.h),
        RackList(),
      ],
    );
  }
}
