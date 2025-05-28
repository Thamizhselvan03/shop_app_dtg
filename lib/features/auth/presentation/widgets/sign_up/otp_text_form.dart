import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pinput/pinput.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';

import 'package:shop_app/features/auth/presentation/bloc/auth_bloc.dart';

class OtpTextForm extends StatefulWidget {
  const OtpTextForm({super.key});

  @override
  State<OtpTextForm> createState() => _OtpTextFormState();
}

class _OtpTextFormState extends State<OtpTextForm> {
  bool isShowPassword = false;

  late AuthBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<AuthBloc>();
    super.initState();
  }

  final focusNode = FocusNode();

  @override
  void dispose() {
    _bloc.otpController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  bool showError = false;

  @override
  Widget build(BuildContext context) {
    const length = 4;

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 60.h,
      textStyle: context.textStyle.copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeightHelper.medium,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF5FCF9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return SizedBox(
      // height: 68.h,
      child: Pinput(
        length: length,
        controller: _bloc.otpController,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        validator: (s) {
          return s == '2222' ? null : 'Pin is incorrect';
        },
        onCompleted: (pin) {
          setState(() => showError = pin != '2222');
        },
        focusedPinTheme: defaultPinTheme.copyWith(
          height: 68.h,
          width: 64.w,
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: ColorsLight.pinkLight),
          ),
        ),
        // errorPinTheme: defaultPinTheme.copyWith(
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     border: Border.all(color: Colors.red),
        //     borderRadius: BorderRadius.circular(8),
        //   ),
        // ),
      ),
    );
  }
}
