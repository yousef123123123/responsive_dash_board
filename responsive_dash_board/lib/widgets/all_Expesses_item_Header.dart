import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllexpeensessItemHeader extends StatelessWidget {
  const AllexpeensessItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              shape: OvalBorder(), color: imageBackground ?? Color(0xFFFAFAFA)),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),
          )),
        ),
        Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: imageColor == null ? Color(0xFF064061) : Colors.white,
            )),
      ],
    );
  }
}
