import 'package:trup_search/helper/sefarim.dart';
import 'package:trup_search/helper/match.dart';

List<Match> matchInTanach(int matchLength, bool Function(List<String>) check,
    {bool verbose = false}) {
  int tanachMatches = 0;
  List<String> noMatches = [];
  List<Match> matches = [];
  for (var section in tanach.keys) {
    int sectionMatches = 0;
    for (var bookTitle in tanach[section]!.keys) {
      int bookMatches = 0;
      final bookContent = tanach[section]![bookTitle] ?? [];
      for (int chapterIndex = 0;
          chapterIndex < bookContent.length;
          chapterIndex++) {
        int chapterMatches = 0;
        final chapter = bookContent[chapterIndex];
        for (int verseIndex = 0; verseIndex < chapter.length; verseIndex++) {
          int verseMatches = 0;
          final verse = chapter[verseIndex];
          final List<String> words = verse.split(' ');
          if (words.length >= matchLength) {
            for (int i = 0; words.length - matchLength >= i; i++) {
              final List<String> matchText = words.sublist(i, i + matchLength);
              if (check(matchText)) {
                tanachMatches++;
                sectionMatches++;
                bookMatches++;
                chapterMatches++;
                verseMatches++;
                final match = Match(
                    section: section,
                    bookTitle: bookTitle,
                    chapterIndex: chapterIndex,
                    verseIndex: verseIndex,
                    matchLength: matchLength,
                    wordIndex: i,
                    matchText: matchText.join(' '));
                matches.add(match);
              }
            }
          }
          if (verseMatches > 0 && verbose) {
            print(
                'Total matches in $bookTitle:$chapterIndex:$verseIndex- $verseMatches');
          }
        }
        if (chapterMatches > 0 && verbose) {
          print('Total matches in $bookTitle:$chapterIndex- $chapterMatches');
        }
      }
      if (bookMatches > 0 && verbose) {
        print('Total matches in $bookTitle- $bookMatches');
      } else {
        noMatches.add(bookTitle);
      }
    }
    print('Total matches in $section- $sectionMatches');
  }
  if (tanachMatches == 0) {
    print('No matches found');
  } else {
    print('Sefarim with no matches: ${noMatches.join(', ')}');
  }
  print('Total matches in Tanach- $tanachMatches');
  return matches;
}
