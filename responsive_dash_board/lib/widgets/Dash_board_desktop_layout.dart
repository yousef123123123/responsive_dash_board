import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpensese_QuickInvoice_Section.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_Card.dart';
import 'package:responsive_dash_board/widgets/my_Card_page_view.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class dashboardDesktoplayout extends StatelessWidget {
  const dashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensiessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardPageView())
      ],
    );
  }
}
