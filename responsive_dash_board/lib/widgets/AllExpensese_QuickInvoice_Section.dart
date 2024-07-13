import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class AllExpensiessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensiessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        AllExpensess(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(height: 24),
      ],
    );
  }
}
