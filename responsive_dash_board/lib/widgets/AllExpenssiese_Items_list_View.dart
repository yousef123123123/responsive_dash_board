import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expesnsses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/AllExpeensess_item.dart';

class AllexpenssieseItemsListView extends StatefulWidget {
  const AllexpenssieseItemsListView({super.key});

  @override
  State<AllexpenssieseItemsListView> createState() =>
      _AllexpenssieseItemsListViewState();
}

class _AllexpenssieseItemsListViewState
    extends State<AllexpenssieseItemsListView> {
  final items = [
    AllExpesnssesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpesnssesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpesnssesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129')
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllexpeensessItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllexpeensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
