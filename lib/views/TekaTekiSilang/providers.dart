import 'package:cardi_care/views/TekaTekiSilang/types/item_datas.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cardi_care/views/TekaTekiSilang/services/tts_service.dart';
import 'types/tts.dart';
import 'types/table_map.dart';
import 'types/direction.dart';

class TtsNotifier extends StateNotifier<Tts> {
  final TtsService _ttsService;
  bool isLoading = false;

  TtsNotifier(this._ttsService)
      : super(const Tts(name: '', col: 0, row: 0, items: [], table: []));

  Future<Tts> getTtsData(String id) async {
    isLoading = true;
    final ttsData = await _ttsService.getTtsData(id);
    final json = ttsData.toMap();

    List<ItemDatas> itemsConverted = [];

    for (var jsonItem in json['items']) {
      print(jsonItem);
      itemsConverted.add(ItemDatas(
        title: jsonItem['title'],
        answer: jsonItem['answer'],
        direction: jsonItem['direction'],
        startCol: jsonItem['startCol'],
        startRow: jsonItem['startRow'],
        number: jsonItem['number'],
        isAnswered: false,
      ));
    }

    state = state.copyWith(
      name: json['name'],
      col: json['col'],
      row: json['row'],
      items: itemsConverted,
    );

    convertToMatrix(state.items, state.col, state.row);
    isLoading = false;
    return state;
  }

  void updateTts(Tts tts) {
    state = tts;
  }

  void clearTts() {
    state = const Tts(name: '', col: 0, row: 0, items: [], table: []);
  }

  List<String> getVerticalQuestion() {
    List<String> questions = [];

    for (final item in state.items) {
      if (item.direction == 'vertical') {
        questions.add('${item.number}. ${item.title}');
      }
    }

    return questions;
  }

  List<String> getHorizontalQuestion() {
    List<String> questions = [];

    for (final item in state.items) {
      if (item.direction == 'horizontal') {
        questions.add('${item.number}. ${item.title}');
      }
    }

    return questions;
  }

  void convertToMatrix(List<ItemDatas> items, int col, int row) {
    List<List<TableMap>> matrix = List<List<TableMap>>.generate(row, (i) {
      return List<TableMap>.generate(
          col,
          (j) => const TableMap(
                value: null,
                number: null,
                answerIndex: null,
                direction: Direction(horizontal: false, vertical: false),
                isAnswered: false,
              ));
    });

    for (final entry in items.asMap().entries) {
      final index = entry.key;
      final item = entry.value;

      List<String> answer = item.answer.toString().split('');

      if (item.direction == 'horizontal') {
        for (var i = 0; i < answer.length; i++) {
          var vertical = false;
          final row = item.startRow;
          final col = item.startCol + i;

          if (matrix[row][col].direction.vertical == true) {
            vertical = true;
          }

          matrix[row][col] = TableMap(
            value: '',
            answerIndex: index,
            number: (matrix[row][col].number == null && i == 0)
                ? item.number
                : matrix[row][col].number,
            direction: Direction(horizontal: true, vertical: vertical),
            isAnswered: false,
          );
        }
      } else {
        for (var i = 0; i < answer.length; i++) {
          var horizontal = false;
          final row = item.startRow + i;
          final col = item.startCol;

          if (matrix[row][col].direction.horizontal == true) {
            horizontal = true;
          }

          matrix[row][col] = TableMap(
            value: '',
            answerIndex: index,
            number: (matrix[row][col].number == null && i == 0)
                ? item.number
                : matrix[row][col].number,
            direction: Direction(horizontal: horizontal, vertical: true),
            isAnswered: false,
          );
        }
      }
    }

    state = state.copyWith(table: matrix);
  }

  void changeDirection(
      {required row, required column, required Direction direction}) {}

  void answerQuestion(ItemDatas item) {
    final answer = item.answer.split('');

    for (var i = 0; i < answer.length; i++) {
      if (item.direction == 'horizontal') {
        final row = item.startRow;
        final col = item.startCol + i;

        state = state.copyWith(
          table: state.table
              .asMap()
              .map(
                (h, e) => MapEntry(
                  h,
                  e
                      .asMap()
                      .map(
                        (j, r) => MapEntry(
                          j,
                          h == row && j == col
                              ? r.copyWith(
                                  value: answer[i],
                                  isAnswered: true,
                                )
                              : r,
                        ),
                      )
                      .values
                      .toList(),
                ),
              )
              .values
              .toList(),
          items: state.items
              .map((e) =>
                  e.number == item.number ? e.copyWith(isAnswered: true) : e)
              .toList(),
        );
      } else {
        final row = item.startRow + i;
        final col = item.startCol;

        state = state.copyWith(
          table: state.table
              .asMap()
              .map(
                (h, e) => MapEntry(
                  h,
                  e
                      .asMap()
                      .map(
                        (j, r) => MapEntry(
                          j,
                          h == row && j == col
                              ? r.copyWith(
                                  value: answer[i],
                                  isAnswered: true,
                                )
                              : r,
                        ),
                      )
                      .values
                      .toList(),
                ),
              )
              .values
              .toList(),
          items: state.items
              .map((e) =>
                  e.number == item.number ? e.copyWith(isAnswered: true) : e)
              .toList(),
        );
      }
    }
  }
}

final ttsNotifierProvider = StateNotifierProvider<TtsNotifier, Tts>((ref) {
  TtsService ttsService = TtsService();
  return TtsNotifier(ttsService);
});
