import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/common/style/colors/colors_light.dart';
import 'package:shop_app/core/common/style/fonts/font_weight_helper.dart';
import 'package:shop_app/core/common/widgets/text_app.dart';
import 'package:shop_app/core/extensions/context_extensions.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.isActive,
    required this.label,
    required this.onPressed,
  });

  final bool isActive;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shadowColor: ColorsLight.pinkLight,
            backgroundColor: ColorsLight.pinkLight.withValues(alpha: .5),
            elevation: 0,
            shape: const StadiumBorder(),
          ),
          child: TextApp(
            text: label,
            theme: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: ColorsLight.pinkDark,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: Text(label),
        ),
      );
    }
  }
}
