import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/widgets/custom_linear_button.dart';
import 'package:shop_app/core/common/widgets/custom_text_field.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/rack_list.dart';

class AddProductsScreenAdmin extends StatelessWidget {
  const AddProductsScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {

    return       Scaffold(
      appBar: AppBar(title: Text("Add Product"),),
    floatingActionButton:  CustomLinearButton(width: 80,onPressed: () {  }, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add),
        TextApp(text: "Add", theme: context.textStyle)
      ],
    ),),
      body: Column(
        children: [
          // Search For Users
        //  const SearchForProducts(),

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
          SizedBox(height: 10.h),
          RackList(),
        ],
      ),
    );
  }
}
