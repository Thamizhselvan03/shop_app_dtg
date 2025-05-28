import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/style/fonts/font_family_helper.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/tab_content.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: ColorsLight.pinkDark,
              unselectedLabelColor: Color(0xFF5E5E5E),
              labelStyle: context.textStyle.copyWith(
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.poppinsEnglish,
                fontSize: 14.sp,
              ),
              unselectedLabelStyle: context.textStyle.copyWith(
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.poppinsEnglish,
                fontSize: 14.sp,
              ),

              dividerColor: Colors.transparent,
              indicatorPadding: EdgeInsets.only(right: 10),
              indicatorColor: ColorsLight.pinkDark,
              tabs: const [
                Tab(text: 'Rack 1'),
                Tab(text: 'Rack 2'),
                Tab(text: 'Rack 3'),
                Tab(text: 'Rack 4'),
                Tab(text: 'Rack 5'),
              ],
            ),
            SizedBox(height: 5.h),
            Expanded(child: const TabBarView(children: [
              TabContent(),
              TabContent(),
              TabContent(),
              TabContent(),
              TabContent(),
            ])),
          ],
        ),
      ),
    );


  }
}
