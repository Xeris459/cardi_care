import 'package:cardi_care/shared/theme.dart';
import 'package:cardi_care/views/Home/home_screen.dart';
import 'package:cardi_care/views/Profile/profile_screen.dart';
import 'package:cardi_care/views/Record/record_screen.dart';
import 'package:cardi_care/views/home_wrapper/main_wrapper_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainWrapperScreen extends StatelessWidget {
  MainWrapperScreen({super.key});

  final MainWrapperController controller = Get.put(MainWrapperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.animateToTab,
        physics: const BouncingScrollPhysics(),
        children: [
          const HomeScreen(),
          RecordScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Obx(() => BottomAppBar(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomAppBar(
                    context,
                    icon: Icons.home,
                    page: 0,
                    label: 'Home',
                  ),
                  _bottomAppBar(
                    context,
                    icon: Icons.bar_chart,
                    page: 1,
                    label: 'Record',
                  ),
                  _bottomAppBar(
                    context,
                    icon: Icons.person,
                    page: 2,
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _bottomAppBar(
    BuildContext context, {
    required IconData icon,
    required page,
    required String label,
  }) {
    return ZoomTapAnimation(
        onTap: () => controller.goToTab(page),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  controller.currentPage.value == page ? redColor : Colors.grey,
            ),
            Text(
              label,
            )
          ],
        ));
  }
}
