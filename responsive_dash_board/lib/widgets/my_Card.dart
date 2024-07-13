import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
          decoration: ShapeDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.imagesCardbackground)),
              color: Color(0xFF4EB7F2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(right: 42, left: 31, top: 16),
                title: Text('Name Card',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white)),
                subtitle: Text(
                  'Sayed Bezra',
                  style: AppStyles.styleMedium20,
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('0918 0264 4524 7511',
                        style: AppStyles.styleSemiBold24
                            .copyWith(color: Colors.white)),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 54 - 28,
              )
            ],
          )),
    );
  }
}
