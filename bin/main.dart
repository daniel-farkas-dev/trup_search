import 'package:trup_search/helper/charechters.dart';
import 'package:trup_search/trup_search.dart' as search;
import 'package:trup_search/helper/word_length.dart';

void main(List<String> arguments) {
  check(List<String> words) {
    return stripped(words[0]) == 'משפט' &&
        words[1].contains(segol) &&
        stripped(words[2]) == 'אשר';
  }

  final matches = search.matchInTanach(3, check, verbose: true);
  print('-- Matches --');
  for (final match in matches) {
    print(match.coordsString());
    print(match.fullVerse());
  }
}
