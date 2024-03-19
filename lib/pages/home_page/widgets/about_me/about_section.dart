import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../config/colors/app_colors.dart';
import '../../../../config/data/initial_about_data.dart';
import 'widgets/avatar_widget.dart';

import '../../../../widgets/decoration_wrapper.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DecorationWrapper(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const AvatarWidget(),
            const SizedBox(height: 24),
            Text(
              infoModel.fullName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 18),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.shadowColor,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12,
                ),
                child: Text(
                  infoModel.position,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: AppColors.mainText,
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: SelectableLinkify(
                    text: infoModel.email,
                    onTap: () => launchUrl(
                      Uri(
                        scheme: 'mailto',
                        path: infoModel.email,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.account_tree_outlined,
                  color: AppColors.mainText,
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: SelectableLinkify(
                    text: infoModel.github,
                    onTap: () => launchUrl(
                      Uri.parse(infoModel.github),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.account_circle_outlined,
                  color: AppColors.mainText,
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: SelectableLinkify(
                    text: infoModel.linkedin,
                    onTap: () => launchUrl(
                      Uri.parse(infoModel.linkedin),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
