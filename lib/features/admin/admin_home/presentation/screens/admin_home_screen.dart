import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/common/style/images/app_images.dart';
import 'package:shop_app/core/common/widgets/custom_linear_button.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/enums/nav_bar_enum.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/admin/admin_home/presentation/refractors/admin_home_body.dart';
import 'package:shop_app/features/admin/main/presentation/cubit/main_cubit.dart';
import 'package:shop_app/features/customer/home_customer/bloc/get_all_products_bloc.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/categories_tab.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/rack_list.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/search_for_users.dart';
import 'package:shop_app/features/super_admin/add_categories/presentation/screens/add_categories_screen.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // final cubit = context.read<MainCubit>();
    return  Scaffold(body:AdminHomeBody(),);




     /* Scaffold(
    floatingActionButton:  CustomLinearButton(width: 80,onPressed: () {  }, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add),
        TextApp(text: "Add", theme: context.textStyle)
      ],
    ),),
      body: BlocProvider(
        create: (context) => GetAllProductsBloc(),
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            if (cubit.navBarEnum == NavBarEnum.home) {
              return Column(
                children: [
                  // Search For Users
                  const SearchForProducts(),
                  SizedBox(height: 10.h),
                  RackList(),
                ],
              );
            } else if (cubit.navBarEnum == NavBarEnum.favorites) {
              const AddCategoriesScreen();
            }
            return AddCategoriesScreen();
          },
        ),
      ),
    );*/
  }
}


// final cubit = context.read<MainCubit>();
// return Padding(
// padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
// child: BlocBuilder<MainCubit, MainState>(
// builder: (context, state) {
// if (cubit.navBarEnum == NavBarEnum.home) {
// return Column(
// children: [
// // Search For Users
// const SearchForProducts(),
// SizedBox(height: 10.h),
// const FoodCategories(),
// ],
// );
// } else if (cubit.navBarEnum == NavBarEnum.favorites) {
// const AddCategoriesScreen();
// }
// return AddCategoriesScreen();
// },
// ),
// );
// }
// }