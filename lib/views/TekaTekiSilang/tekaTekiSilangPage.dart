import 'package:cardi_care/shared/theme.dart';
import 'services/tts_service.dart';
import 'widgets/teka_teki_silang_container.dart';
import 'widgets/teka_teki_silang_drawer_question.dart';
import 'widgets/teka_teki_silang_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TekaTekiSilangPage extends StatefulWidget {
  const TekaTekiSilangPage({super.key});

  @override
  State<TekaTekiSilangPage> createState() => _TekaTekiSilangState();
}

class _TekaTekiSilangState extends State<TekaTekiSilangPage> {
  final ScrollController scrollController = ScrollController();
  final TtsService ttsService = TtsService();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: redColor,
          foregroundColor: whiteColor,
          title: Text(
            'Teka Teki Silang',
            style: whiteText.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
        ),
        body: const Stack(
          children: [
            TekaTekiSilangContainer(id: 'yTPWFL97mf7e3Eb4In1z'),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Align(
            //     alignment: Alignment.bottomRight,
            //     child: FloatingActionButton(
            //       onPressed: onPressedShowDrawerQuestion,
            //       backgroundColor: redColor,
            //       shape: const CircleBorder(),
            //       child: const Icon(
            //         Icons.question_mark,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            TekaTekiSilangScore(),
          ],
        ),
      ),
    );
  }

  void onPressedShowDrawerQuestion() {
    // when the button is pressed, show the drawer question TekaTekiSilangDrawerQuestion widget from the bottom of the screen with a height of 50% of the screen height
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const TekaTekiSilangDrawerQuestion();
      },
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: true,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 500),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
