import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/Range_Options.dart';

class AllExpesessHeader extends StatelessWidget {
  const AllExpesessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'AllExpessese',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
