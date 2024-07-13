// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expesnsses_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_Expesses_item_Header.dart';

import 'inActive_and_Active_allExpenssise.dart';

class AllexpeensessItem extends StatelessWidget {
  const AllexpeensessItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpesnssesItemModel itemModel;

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return AnimatedCrossFade(
          firstCurve: Curves.easeInCirc,
          sizeCurve: Curves.bounceOut,
          firstChild: InActiveAllExpenssiesItem(itemModel: itemModel),
          secondChild: ActiveAllExpenssiesItem(itemModel: itemModel),
          crossFadeState: CrossFadeState.showSecond,
          duration: Durations.extralong1);
      (itemModel: itemModel);
    } else {
      return InActiveAllExpenssiesItem(itemModel: itemModel);
    }
    // AnimatedCrossFade(
    //     firstChild: InActiveAllExpenssiesItem(itemModel: itemModel),
    //     secondChild: ActiveAllExpenssiesItem(itemModel: itemModel),
    //     crossFadeState: CrossFadeState.showSecond,
    //     duration: Durations.extralong4);

    // isSelected
    //     ? ActiveAllExpenssiesItem(itemModel: itemModel)
    //     : InActiveAllExpenssiesItem(itemModel: itemModel);
  }
}
