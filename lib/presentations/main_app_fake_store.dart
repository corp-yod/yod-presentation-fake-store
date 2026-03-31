import 'package:flutter/material.dart';
import 'package:yod/yod.dart';
import 'package:yod_nak_ram_ui_kit/yod_nak_ram_ui_kit.dart';

class MainAppFakeStore extends StatelessWidget {
  MainAppFakeStore({super.key});

  final currentIndex = 0.yor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YodBuilder(
        builder: () {
          return Navigator(
            pages: [
              if (currentIndex.value == 0)
                MaterialPage(
                  child: Center(
                    child: RamTitleText(
                      text: 'Home Page',
                      colorText: context.ramTheme.onPrimary,
                    ),
                  ),
                ),
              if (currentIndex.value == 1)
                const MaterialPage(
                  child: Center(child: RamTitleText(text: 'Search Page')),
                ),
              if (currentIndex.value == 2)
                const MaterialPage(
                  child: Center(child: RamTitleText(text: 'Profile Page')),
                ),
            ],
            onPopPage: (route, result) {
              if (!route.didPop(result)) {
                return false;
              }
              return true;
            },
          );
        },
      ),
      extendBody: true,
      bottomNavigationBar: RamBottomBarNavigation(
        onTap: (index) {
          currentIndex.value = index;
        },
      ),
    );
  }
}
