import 'package:cardi_care/routes.dart';
import 'package:cardi_care/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignasScreen extends StatelessWidget {
  const SignasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Aku sebagai...',
                  style:
                      blackText.copyWith(fontSize: 32, fontWeight: semibold)),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.signupPasien),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      side: BorderSide(color: redColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Pasien',
                    style: redText.copyWith(fontSize: 12, fontWeight: semibold),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.signupKeluarga),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      side: BorderSide(color: redColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Keluarga Pasien',
                    style: redText.copyWith(fontSize: 12, fontWeight: semibold),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
