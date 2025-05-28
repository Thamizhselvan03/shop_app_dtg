import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/style/images/app_images.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/routes/app_routes.dart';
import 'package:shop_app/features/super_admin/dashboard/presentation/widgets/dashboard_container.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {},

        child: ListView(
          children: [
            //Product
            const DashboardContainer(
              title: 'Revenue',
              number: '0',
              image: AppImages.productsDrawer,
              isLoading: false,
            ),
            SizedBox(height: 20.h),
            //categories
            GestureDetector(
              onTap: (){
                context.pushNamedAndRemoveUntil(AppRoutes.mainCustomer);
              },
              child: const DashboardContainer(
                title: 'Categories',
                number: '0',
                image: AppImages.categoriesDrawer,
                isLoading: false,
              ),
            ),
            SizedBox(height: 20.h),
            //users
            GestureDetector(
              onTap: (){
                context.pushNamedAndRemoveUntil(AppRoutes.homeCustomer);
              },
              child: const DashboardContainer(
                title: 'Users',
                number: '0',
                image: AppImages.usersDrawer,
                isLoading: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
