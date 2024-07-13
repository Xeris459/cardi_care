import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cardi_care/views/TekaTekiSilang/widgets/teka_teki_silang_widget.dart';
import '../providers.dart';

class TekaTekiSilangContainer extends ConsumerWidget {
  final String? id;
  const TekaTekiSilangContainer({super.key, this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.watch(ttsNotifierProvider.notifier).getTtsData(id!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData) {
          return const Center(child: Text('No Teka Teki Silang data found'));
        }

        return const TekaTekiSilangWidget();
      },
    );
  }
}
