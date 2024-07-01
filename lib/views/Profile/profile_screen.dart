import 'package:cardi_care/shared/theme.dart';
import 'package:cardi_care/views/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 86,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.person,
                  color: whiteColor,
                  size: 112,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ariq Farhan',
                      style: blackText.copyWith(fontSize: 22),
                    ),
                    Text(
                      '21 tahun',
                      style: blackText.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          ProfileButtons(title: 'Pengaturan'),
          ProfileButtons(title: 'Riwayat'),
          ProfileButtons(title: 'Obat'),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        child: CustomRedButton(title: 'Keluar'),
      ),
    );
  }
}
