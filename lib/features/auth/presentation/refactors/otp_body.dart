import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/animations/animate_do.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';
import 'package:shop_app/core/routes/app_routes.dart';
import 'package:shop_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:shop_app/features/auth/presentation/widgets/sign_up/otp_button.dart';
import 'package:shop_app/features/auth/presentation/widgets/sign_up/otp_text_form.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              // otp Info
              const AuthTittleInfo(
                title: 'verification',
                description:
                    'SMS Verification code has been sent \n\n +91 9876543210',
              ),

              SizedBox(height: 40.h),

              const OtpTextForm(),

              SizedBox(height: 40.h),

              // OTP button
              const OtpButton(),
              SizedBox(height: 40.h),
              // resend otp
              TextApp(
                text: "Didn't receive code?",
                theme: context.textStyle.copyWith(fontSize: 14.sp),
              ),

              // Resend otp button
              CustomFadeInDown(
                duration: 600,
                child: TextButton(
                  onPressed: () {
                    context.pushReplacementNamed(AppRoutes.login);
                  },
                  child: TextApp(
                    text: 'Resend ',
                    theme: context.textStyle.copyWith(
                      fontSize: 16.sp,
                      color: context.color.bluePinkLight,
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
