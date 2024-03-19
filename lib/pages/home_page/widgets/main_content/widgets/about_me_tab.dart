import 'package:flutter/material.dart';
import 'package:portfolio/config/data/initial_about_data.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../about_me/about_section.dart';

class AboutMeTab extends StatelessWidget {
  const AboutMeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!ResponsiveBreakpoints.of(context).isDesktop)
          const AboutMeSection(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(infoModel.about),
        ),
      ],
    );
  }
}
