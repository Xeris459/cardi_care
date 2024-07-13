import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers.dart';

class TekaTekiSilangScore extends ConsumerStatefulWidget {
  const TekaTekiSilangScore({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<TekaTekiSilangScore> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ]),
        child: getScore(context),
      ),
    );
  }

  Widget getScore(BuildContext context) {
    final ttsData = ref.watch(ttsNotifierProvider);
    final totalQuestion = ttsData.items.length;

    return Text(
        "Score: ${ttsData.items.where((item) => item.isAnswered).length} / $totalQuestion");
  }
}
