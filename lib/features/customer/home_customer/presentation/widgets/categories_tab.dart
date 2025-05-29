import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/widgets/custom_container_linear_admin.dart';
import 'package:shop_app/core/common/widgets/custom_text_field.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/product_card.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GradientAppBarWidget(),
      body: Column(
        children: [
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
              filled: true,
              fillColour: const Color(0xFFF5FCF9),
              hintText: 'Search for products',

              suffixIcon: IconButton(icon: Icon(Icons.mic), onPressed: () {}),
              // suffixIcon: IconButton(
              //   onPressed: () {
              //     //  bloc.searchController.clear();
              //     //  bloc.add(const GetAllUsersEvent.getAllUsers(isNotLoading: true));
              //   },
              //   icon: bloc.searchController.text.isEmpty
              //       ? const SizedBox.shrink()
              //       : const Icon(Icons.clear, color: ColorsDark.blueLight),
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: demoCarts.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    CustomContainerLinearAdmin(
                      gradient: LinearGradient(
                        colors: [
                          ColorsLight.pinkDark,
                          ColorsLight.pinkDark.withValues(alpha: 0.8),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      height: 100,
                      width: 40,
                      child: Center(
                        child: TextApp(
                          text: 'R${index + 1}',
                          theme: context.textStyle.copyWith(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Expanded(child: CartCard(cart: demoCarts[index])),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    /* return Expanded(
      child: DefaultTabController(
        length: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            */ /*TabBar(
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
              indicatorPadding: const EdgeInsets.only(right: 10),
              indicatorColor: ColorsLight.pinkDark,
              tabs: const [
                Tab(text: 'Rack 1'),
                Tab(text: 'Rack 2'),
                Tab(text: 'Rack 3'),
                Tab(text: 'Rack 4'),
                Tab(text: 'Rack 5'),
              ],
            ),
            SizedBox(height: 5.h),*/ /*
            */ /*const Expanded(
              child: TabBarView(
                children: [

                  TabContent(),
                  TabContent(),
                  TabContent(),
                  TabContent(),
                ],
              ),
            ),*/ /*
          ],
        ),
      ),
    );*/
  }
}

class GradientAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const GradientAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
        height: 90.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(15),
          ),
          gradient: LinearGradient(
            colors: [
              ColorsLight.pinkDark,
              ColorsLight.pinkDark.withValues(alpha: 0.8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 5),
          child: Center(
            child: TextApp(
              text: 'Rack 1',
              theme: context.textStyle.copyWith(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
