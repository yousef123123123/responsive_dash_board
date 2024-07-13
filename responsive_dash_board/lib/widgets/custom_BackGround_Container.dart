import 'package:flutter/material.dart';

class customBackGroundContainer extends StatelessWidget {
  const customBackGroundContainer({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(padding ?? 20),
          ),
        ),
        child: child);
  }
}
