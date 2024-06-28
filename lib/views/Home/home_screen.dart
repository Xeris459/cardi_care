import 'package:cardi_care/routes.dart';
import 'package:cardi_care/shared/theme.dart';
import 'package:cardi_care/views/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 64,
            ),
            Text(
              'Halo, Daiyan',
              style: blackText.copyWith(fontSize: 22, fontWeight: semibold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: pinkColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Tugas Harian',
                    style: blackText.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  FeatureButtons(
                    title: 'Olahraga',
                    icons: Icons.man,
                    status: false,
                    onPressed: () {
                      Get.toNamed(Routes.userOlahraga);
                    },
                  ),
                  FeatureButtons(
                    title: 'Diet Rendah Garam',
                    icons: Icons.rice_bowl,
                    status: true,
                    onPressed: () {
                      Get.toNamed(Routes.userDiet);
                    },
                  ),
                  FeatureButtons(
                    title: 'Konsumsi Obat',
                    icons: Icons.medication_outlined,
                    status: false,
                    onPressed: () {
                      Get.toNamed(Routes.userObat);
                    },
                  ),
                  FeatureButtons(
                    title: 'Berat Badan',
                    icons: Icons.monitor_weight,
                    status: false,
                    onPressed: () {
                      Get.toNamed(Routes.userBerat);
                    },
                  ),
                  FeatureButtons(
                    title: 'Pembatasan Cairan',
                    icons: Icons.water,
                    status: false,
                    onPressed: () {
                      Get.toNamed(Routes.userCairan);
                    },
                  ),
                  FeatureButtons(
                    title: 'Merokok & Alkohol',
                    icons: Icons.no_drinks,
                    status: true,
                    onPressed: () {
                      Get.toNamed(Routes.userMerokokAlkohol);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
