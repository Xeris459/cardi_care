import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../types/item_datas.dart';
import '../providers.dart';

class TekaTekiSilangDrawerAnswer extends ConsumerStatefulWidget {
  final int row;
  final int column;
  final String direction;
  const TekaTekiSilangDrawerAnswer(
      {super.key,
      required this.row,
      required this.column,
      required this.direction});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<TekaTekiSilangDrawerAnswer> {
  TextEditingController textEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? errorText;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void setError(String error) {
    setState(() {
      errorText = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    final row = widget.row;
    final col = widget.column;
    final direction = widget.direction;

    Iterable<ItemDatas> getColumnRow =
        ref.watch(ttsNotifierProvider).items.where((element) {
      return element.startRow == row &&
          element.startCol == col &&
          element.direction == direction;
    });

    ItemDatas targetAnswered = getColumnRow.isNotEmpty
        ? getColumnRow.first
        : ref.watch(ttsNotifierProvider).items[
            ref.watch(ttsNotifierProvider).table[row][col].answerIndex ?? 0];

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          answerDrawer(targetAnswered),
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width - 35,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget answerDrawer(ItemDatas item) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    const Text(
                      'PERTANYAAN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${item.number}. ${item.title}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'masukan jawaban anda disini',
                        errorText: errorText,
                      ),
                      autofocus: true,
                      inputFormatters: [
                        UpperCaseTextFormatter(),
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Jawaban tidak boleh kosong';
                        }

                        // validate length of answer
                        if (value.length != item.answer.length) {
                          return 'Kotak Jawaban memiliki panjang ${item.answer.length}';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => onPressed(item),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Jawab',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void onPressed(ItemDatas item) {
    if (formKey.currentState?.validate() == true) {
      if (item.answer.toLowerCase() ==
          textEditingController.text.toLowerCase()) {
        ref.read(ttsNotifierProvider.notifier).answerQuestion(item);
        Navigator.pop(context);
      } else {
        setError('Jawaban Anda Salah');
      }
    }
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
