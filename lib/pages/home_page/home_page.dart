import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/widgets/about_me/about_section.dart';
import 'package:portfolio/pages/home_page/widgets/main_content/main_content.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../config/colors/app_colors.dart';
import '../../config/dimens.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.mainBackground,
      child: ResponsiveRowColumn(
        rowPadding: rowPadding,
        columnPadding: rowPadding,
        rowSpacing: 24,
        layout: ResponsiveBreakpoints.of(context).isDesktop
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        children: [
          if (ResponsiveBreakpoints.of(context).isDesktop)
            const ResponsiveRowColumnItem(
              rowFlex: 1,
              child: AboutMeSection(),
            ),
          ResponsiveRowColumnItem(
            rowFlex: ResponsiveBreakpoints.of(context).isDesktop ? 3 : 1,
            child: const MainContent(),
          ),
        ],
      ),
    );
  }
}
