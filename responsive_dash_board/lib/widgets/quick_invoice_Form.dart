import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_textfield.dart';

class quickInvoiceForm extends StatelessWidget {
  const quickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextfield(
                    title: 'Customer Name', hint: 'Type Customer Name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextfield(
                    title: 'Customer Email', hint: 'Type Customer Email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextfield(title: 'Item Name', hint: 'Type Item Name')),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextfield(title: 'Item Mount ', hint: 'UsD')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        ),
      ],
    );
  }
}
