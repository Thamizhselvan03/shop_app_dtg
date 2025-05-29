import 'package:flutter/material.dart';
import 'package:shop_app/features/admin/admin_home/presentation/widgets/CustomCardSales.dart';

class AdminHomeBody extends StatelessWidget {
  const AdminHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        spacing: 5,

        children: [
          PaymentItem(
            title: 'Total User',
            iconData: Icons.supervised_user_circle,
            amount: '144',
          ),
          PaymentItem(
            title: 'Total Sales',
            iconData: Icons.supervised_user_circle,
            amount: '50',
          ),
          PaymentItem(
            title: 'Employee',
            iconData: Icons.supervised_user_circle,
            amount: '8964',
          ),
        ],
      ),
    );
  }
}
