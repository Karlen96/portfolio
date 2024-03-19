import 'package:flutter/material.dart';
import 'package:portfolio/config/dimens.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/data/initial_about_data.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: borderRadius,
      ),
      child: SizedBox(
        width: 120,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(infoModel.avatar),
          ),
        ),
      ),
    );
  }
}
