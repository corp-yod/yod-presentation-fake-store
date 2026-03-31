import 'package:flutter/material.dart';
import 'package:yod/yod.dart';
import 'package:yod_nak_ram_ui_kit/yod_nak_ram_ui_kit.dart';
import 'package:yod_presentation_fake_store/presentations/home/home_screen.dart';

class MainAppFakeStore extends StatelessWidget {
  MainAppFakeStore({super.key});

  final currentIndex = 0.yor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YodBuilder(
        builder: () => Navigator(
          pages: [
            if (currentIndex.value == 0) MaterialPage(child: HomeScreen()),
            if (currentIndex.value == 1)
              MaterialPage(
                child: Center(
                  child: RamTitleText(
                    text: 'Search Page',
                    colorText: context.ramTheme.onSurface,
                  ),
                ),
              ),
            if (currentIndex.value == 2)
              MaterialPage(
                child: Center(
                  child: RamTitleText(
                    text: 'Profile Page',
                    colorText: context.ramTheme.onSurface,
                  ),
                ),
              ),
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) {
              return false;
            }
            return true;
          },
        ),
      ),
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: RamBottomBarNavigation(
          tabs: [
            ClipRRect(
              borderRadius: BorderRadius.circular(kRadius1),
              child: const Tab(icon: Icon(Icons.home_outlined), text: 'Home'),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(kRadius1),
              child: const Tab(
                icon: Icon(Icons.search_outlined),
                text: 'Search',
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(kRadius1),
              child: const Tab(
                icon: Icon(Icons.person_outline),
                text: 'Person',
              ),
            ),
          ],
          onTap: (index) {
            currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
