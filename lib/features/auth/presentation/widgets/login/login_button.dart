import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/animations/animate_do.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/common/widgets/custom_linear_button.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/language/lang_keys.dart';
import 'package:shop_app/core/routes/app_routes.dart';
import 'package:shop_app/features/auth/presentation/bloc/auth_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
        width: MediaQuery.of(context).size.width,
        height: 50.w,
        onPressed: () {
          _validateThenDoLogin(context);
        },
        child: TextApp(
          text: context.translate(LangKeys.sendOtp),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),

      // child: BlocConsumer<AuthBloc, AuthState>(
      //   listener: (context, state) {
      //     // state.whenOrNull(
      //     //   success: (userRole) {
      //     //     // ShowToast.showToastErrorTop(
      //     //     //   message: context.translate(LangKeys.loggedSuccessfully),
      //     //     // );
      //     //     // if (userRole == 'admin') {
      //     //     //   context.pushNamedAndRemoveUntil(AppRoutes.homeAdmin);
      //     //     // } else {
      //     //     //   context.pushNamedAndRemoveUntil(AppRoutes.homeCustomer);
      //     //     // }
      //     //   },
      //     //   error: (message) {
      //     //     ShowToast.showToastErrorTop(message: context.translate(message));
      //     //   },
      //     // );
      //   },
      //   builder: (context, state) {
      //     return state.maybeWhen(
      //       loading: () {
      //         return CustomLinearButton(
      //           width: MediaQuery.of(context).size.width,
      //           height: 50.w,
      //           onPressed: () {},
      //           child: const CircularProgressIndicator(color: Colors.white),
      //         );
      //       },
      //       orElse: () {
      //         return CustomLinearButton(
      //           width: MediaQuery.of(context).size.width,
      //           height: 50.w,
      //           onPressed: () {
      //             _validateThenDoLogin(context);
      //           },
      //           child: TextApp(
      //             text: context.translate(LangKeys.login),
      //             theme: context.textStyle.copyWith(
      //               fontSize: 18.sp,
      //               fontWeight: FontWeightHelper.bold,
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }

  void _validateThenDoLogin(BuildContext context) {
    if (context.read<AuthBloc>().formKey.currentState!.validate()) {
      context.pushNamed(AppRoutes.otp);
    }
  }
}
