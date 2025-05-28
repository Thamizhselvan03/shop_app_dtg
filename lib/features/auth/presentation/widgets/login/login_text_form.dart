import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/animations/animate_do.dart';
import 'package:shop_app/core/common/widgets/custom_text_field.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/language/lang_keys.dart';
import 'package:shop_app/features/auth/presentation/bloc/auth_bloc.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool isShowPassword = false;
  late AuthBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<AuthBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.phoneNoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _bloc.formKey,
      child: Column(
        children: [
          SizedBox(height: 20.h),
          //Phone Number
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              filled: true,
              fillColour: const Color(0xFFF5FCF9),
              controller: _bloc.phoneNoController,
              hintText: context.translate(LangKeys.phoneNumber),
              keyboardType: TextInputType.number,
              obscureText: isShowPassword,

              validator: (value) {
                if (value == null || value.isEmpty || value.length < 10) {
                  return context.translate(LangKeys.validNumber);
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
