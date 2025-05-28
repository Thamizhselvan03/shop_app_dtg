import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/style/fonts/font_family_helper.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/categories_tab.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/product_card.dart';

class RackList extends StatelessWidget {
  const RackList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: MasonryGridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FoodCategories()),
                );
              },
              child: Container(
                height: 100,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: TextApp(
                    text: 'Rack ${index + 1}',
                    theme: context.textStyle.copyWith(

                      fontFamily: FontFamilyHelper.poppinsEnglish,
                      fontSize: 14.sp,
                      fontWeight: FontWeightHelper.medium,
                    ),
                  ),
                ),
              ),
            ),
          );

          //   ListView.builder(
          //
          //   physics: BouncingScrollPhysics(),
          //   itemCount: 10,
          //
          //   itemBuilder: (context, index) {
          //     return const  FoodCategories();
          //   },
          // );
        },
      ),
    );
  }
}
