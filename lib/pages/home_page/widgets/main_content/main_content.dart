import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/pages/home_page/widgets/main_content/widgets/about_me_tab.dart';

import '../../../../enums/tabs_type.dart';
import '../../../../widgets/decoration_wrapper.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: TabsType.values.length,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecorationWrapper(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 48,
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: TabsType.values
                  .map(
                    (e) => Tab(text: e.name),
                  )
                  .toList(),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const RepaintBoundary(
                    child: SingleChildScrollView(
                      child: AboutMeTab(),
                    ),
                  ),
                  RepaintBoundary(
                    child: ListView.builder(
                      itemBuilder: (_, i) {
                        return Text('projects $i');
                      },
                      itemCount: 1000,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
