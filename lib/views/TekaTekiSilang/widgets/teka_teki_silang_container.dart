import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'teka_teki_silang_widget.dart';
import 'teka_teki_silang_question.dart';
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

        return SingleChildScrollView(
          physics: const RangeMaintainingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                child: const TekaTekiSilangWidget(),
              ),
              const TekaTekiSilangQuestion(),
            ],
          ),
        );
      },
    );
  }
}
