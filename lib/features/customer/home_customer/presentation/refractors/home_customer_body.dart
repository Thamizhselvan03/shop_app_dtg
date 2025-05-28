import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/categories_tab.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/product_card.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/search_for_users.dart';

class HomeCustomerBody extends StatelessWidget {
  const HomeCustomerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
      child: Column(
        children: [
          // Search For Users
          const SearchForProducts(),
          SizedBox(height: 10.h),
        FoodCategories(),

          // const ProductGridView(),
          // Expanded(
          //   //height: 200,
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 10.w),
          //     child: ListView.builder(
          //       shrinkWrap: true,
          //       itemCount: demoCarts.length,
          //       itemBuilder: (context, index) => Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 5),
          //         child: CartCard(cart: demoCarts[index]),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
