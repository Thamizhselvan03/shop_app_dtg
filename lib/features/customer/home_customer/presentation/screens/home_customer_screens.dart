import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/common/animations/animate_do.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/common/style/images/app_images.dart';
import 'package:shop_app/core/common/widgets/admin_app_bar.dart';
import 'package:shop_app/core/common/widgets/custom_linear_button.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/routes/app_routes.dart';

import 'package:shop_app/features/customer/home_customer/bloc/get_all_products_bloc.dart';
import 'package:shop_app/features/customer/home_customer/presentation/refractors/home_customer_body.dart';

class HomeCustomerScreen extends StatelessWidget {
  const HomeCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetAllProductsBloc(),
      child:  Scaffold(
        backgroundColor: Colors.white,
        appBar:  AppBar(

          automaticallyImplyLeading: false,
          backgroundColor: context.color.mainColor,
          elevation: 0,
          title:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomFadeInRight(
                      duration: 800,
                      child: TextApp(
                        text: "Find Your Products",
                        theme: context.textStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeightHelper.bold,
                          color: context.color.textColor,
                        ),
                      ),
                    ),
                    CustomFadeInLeft(
                      duration: 800,
                      child: CustomLinearButton(
                        onPressed: () {
                          context.pushNamedAndRemoveUntil(AppRoutes.homeSuperAdmin);
                          //  context.pushName(AppRoutes.search);
                        },
                        child: Center(
                          child: SvgPicture.asset(AppImages.notificationIcon),
                        ),
                      ),
                    )
                  ],
                )
            
          
        ),
        body: HomeCustomerBody(),
      ),
    );
  }
}
