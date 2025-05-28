import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/animations/animate_do.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';

class AuthTittleInfo extends StatelessWidget {
  const AuthTittleInfo({
    required this.title,
    required this.description,
    super.key,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          //app logo
          Image.network(
            "https://i.postimg.cc/nz0YBQcH/Logo-light.png",
            height: 100,
          ),
          SizedBox(height: 70.h),
          //title
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          SizedBox(height: 10.h),
          //description
          TextApp(
            text: description,
            theme: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.medium,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
