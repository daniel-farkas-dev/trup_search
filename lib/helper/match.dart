import 'package:trup_search/helper/charechters.dart';
import 'package:trup_search/helper/sefarim.dart';

class Match {
  String section;
  String bookTitle;
  int chapterIndex;
  int verseIndex;
  int wordIndex;
  String matchText;
  int matchLength;

  Match(
      {required this.section,
      required this.bookTitle,
      required this.chapterIndex,
      required this.verseIndex,
      required this.wordIndex,
      required this.matchText,
      required this.matchLength});

  fullVerse() {
    List<String> verse =
        tanach[section]![bookTitle]![chapterIndex][verseIndex].split(' ');
    verse[wordIndex] = '$rlo*${verse[wordIndex]}';
    verse[wordIndex + matchLength - 1] += '$rlo*';
    return verse.join(' ');
  }

  coordsString() {
    return '$bookTitle:${chapterIndex + 1}:${verseIndex + 1}:${wordIndex + 1}';
  }
}
