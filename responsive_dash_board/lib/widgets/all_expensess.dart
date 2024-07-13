import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllEXpesses_Header.dart';
import 'package:responsive_dash_board/widgets/AllExpenssiese_Items_list_View.dart';
import 'package:responsive_dash_board/widgets/custom_BackGround_Container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return customBackGroundContainer(
      child: Column(
        children: [
          AllExpesessHeader(),
          SizedBox(
            height: 16,
          ),
          AllexpenssieseItemsListView()
        ],
      ),
    );
  }
}
