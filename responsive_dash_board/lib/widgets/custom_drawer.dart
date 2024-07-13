import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/ActiveAndUnActive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import 'drawe_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com '),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          drawerItemlistView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                unActiveDraweItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting", image: Assets.imagesSettingsystem)),
                unActiveDraweItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account",
                        image: Assets.imagesLogoutaccount)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
