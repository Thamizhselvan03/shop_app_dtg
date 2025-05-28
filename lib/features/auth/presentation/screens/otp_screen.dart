import 'package:flutter/material.dart';

import 'package:shop_app/features/auth/presentation/refactors/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(bottom: false, child: OtpBody()));
  }
}
