import 'package:trup_search/helper/charechters.dart';

String stripped(String word) {
  String cleanWord = '';
  final chars = word.runes;
  for (int char in chars) {
    if (letters.contains(String.fromCharCode(char))) {
      cleanWord += String.fromCharCode(char);
    }
  }
  return cleanWord;
}

int wordLength(String word) {
  return stripped(word).length;
}
