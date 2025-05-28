import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/language/lang_keys.dart';

import 'package:shop_app/features/auth/presentation/widgets/auth_title_info.dart';

import 'package:shop_app/features/auth/presentation/widgets/login/login_button.dart';
import 'package:shop_app/features/auth/presentation/widgets/login/login_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            // Welcome Info
            AuthTittleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(height: 30.h),
            // Login TextForm
            const LoginTextForm(),
            SizedBox(height: 30.h),
            // Login Button
            const LoginButton(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
