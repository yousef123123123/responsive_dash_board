import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

import '../models/drawer_item_model.dart';

class drawerItemlistView extends StatefulWidget {
  const drawerItemlistView({
    super.key,
  });

  @override
  State<drawerItemlistView> createState() => _drawerItemlistViewState();
}

class _drawerItemlistViewState extends State<drawerItemlistView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'MyTransaction', image: Assets.imagesMytransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletaccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyinvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
                isActive: activeIndex == index, drawerItemModel: items[index]),
          ),
        );
      },
    );
  }
}
