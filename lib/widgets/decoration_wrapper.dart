import 'package:flutter/material.dart';

import '../config/colors/app_colors.dart';
import '../config/dimens.dart';

class DecorationWrapper extends StatelessWidget {
  const DecorationWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.mainContent,
          borderRadius: borderRadius,
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
