import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/toast/show_toast.dart';
import 'package:shop_app/core/common/widgets/custom_button.dart';
import 'package:shop_app/core/common/widgets/custom_linear_button.dart';
import 'package:shop_app/core/common/widgets/custom_text_field.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/features/customer/home_customer/presentation/widgets/rack_list.dart';

class AddProductsScreenAdmin extends StatelessWidget {
  const AddProductsScreenAdmin({super.key});

  void _showInputDialog(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: TextApp(text: 'Enter title', theme: context.textStyle),
          content: CustomTextField(
            hintText: 'Eg. rack 1',
            filled: true,
            fillColour: const Color(0xFFF5FCF9),
            controller: _controller,

            keyboardType: TextInputType.text,
          ),
          actions: [
            CustomLinearButton(
              gradient: LinearGradient(colors: [
                Colors.grey.shade200,
                Colors.grey.shade200,
              ]),
              onPressed: () {
                context.pop();
              },
              child: TextApp(
                text: 'Cancel',
                theme: context.textStyle.copyWith(color: Colors.black),
              ),
              width: 100,
              height: 40,
            ),

            CustomLinearButton(
              width: 100,
              onPressed: () {
                ShowToast.showToastSuccessTop(message: 'Added Successfully "${_controller.text}"');
                context.pop();
              },
              child: TextApp(
                text: 'Submit',
                theme: context.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Product")),
      floatingActionButton: CustomLinearButton(
        width: 80,
        onPressed: () {
          _showInputDialog(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add),
            TextApp(text: "Add", theme: context.textStyle),
          ],
        ),
      ),
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
