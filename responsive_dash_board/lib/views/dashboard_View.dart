import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';

import '../widgets/Dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          dasktopLayout: (context) => dashboardDesktoplayout()),
    );
  }
}
