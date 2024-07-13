import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_BackGround_Container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_Invoice_Header.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_Form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return customBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickinvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          quickInvoiceForm(),
        ],
      ),
    );
  }
}
