import 'package:trup_search/Trup/Beraishis.dart';
import 'package:trup_search/Trup/amos.dart';
import 'package:trup_search/Trup/bamidbar.dart';
import 'package:trup_search/Trup/chabakuk.dart';
import 'package:trup_search/Trup/chaggai.dart';
import 'package:trup_search/Trup/daniel.dart';
import 'package:trup_search/Trup/devarim.dart';
import 'package:trup_search/Trup/divrei_hayamim_alef.dart';
import 'package:trup_search/Trup/divrei_hayamim_beis.dart';
import 'package:trup_search/Trup/eichah.dart';
import 'package:trup_search/Trup/esther.dart';
import 'package:trup_search/Trup/ezra.dart';
import 'package:trup_search/Trup/hoshea.dart';
import 'package:trup_search/Trup/iyov.dart';
import 'package:trup_search/Trup/koheles.dart';
import 'package:trup_search/Trup/malachi.dart';
import 'package:trup_search/Trup/melachim_alef.dart';
import 'package:trup_search/Trup/melachim_bais.dart';
import 'package:trup_search/Trup/michah.dart';
import 'package:trup_search/Trup/mishlei.dart';
import 'package:trup_search/Trup/nachum.dart';
import 'package:trup_search/Trup/nechemiah.dart';
import 'package:trup_search/Trup/ovadiah.dart';
import 'package:trup_search/Trup/rus.dart';
import 'package:trup_search/Trup/shemos.dart';
import 'package:trup_search/Trup/shir_hashirim.dart';
import 'package:trup_search/Trup/shmuel_alef.dart';
import 'package:trup_search/Trup/shmuel_bais.dart';
import 'package:trup_search/Trup/shoftim.dart';
import 'package:trup_search/Trup/tehilim.dart';
import 'package:trup_search/Trup/tzafaniah.dart';
import 'package:trup_search/Trup/vayikra.dart';
import 'package:trup_search/Trup/yechezkal.dart';
import 'package:trup_search/Trup/yehoshua.dart';
import 'package:trup_search/Trup/yeshayah.dart';
import 'package:trup_search/Trup/yermiyah.dart';
import 'package:trup_search/Trup/yoel.dart';
import 'package:trup_search/Trup/yonah.dart';
import 'package:trup_search/Trup/zechariah.dart';

const Map<String, List<List<String>>> _torah = {
  'Beraishis': beraishis,
  'Shemos': shemos,
  'Vayikra': vayikra,
  'Bamidbar': bamidbar,
  'Devarim': devarim,
};

const Map<String, List<List<String>>> _neviim = {
  'Yehoshua': yehoshua,
  'Shoftim': shoftim,
  'ShmuelAlef': shmuelAlef,
  'ShmuelBais': shmuelBais,
  'MelachimAlef': melachimAlef,
  'MelachimBais': melachimBais,
  'Yeshayah': yeshayah,
  'Yermiyah': yermiyah,
  'Yechezkal': yechezkal,
  'Hoshea': hoshea,
  'Yoel': yoel,
  'Amos': amos,
  'Ovadiah': ovadiah,
  'Yonah': yonah,
  'Michah': michah,
  'Nachum': nachum,
  'Chabakuk': chabakuk,
  'Tzafaniah': tzafaniah,
  'Chaggai': chaggai,
  'Zechariah': zechariah,
  'Malachi': malachi,
};

const Map<String, List<List<String>>> _kesuvim = {
  'Tehilim': tehilim,
  'Mishlei': mishlei,
  'Iyov': iyov,
  'ShirHashirim': shirHashirim,
  'Rus': rus,
  'Eichah': eichah,
  'Koheles': koheles,
  'Esther': esther,
  'Daniel': daniel,
  'Ezra': ezra,
  'Nechemiah': nechemiah,
  'DivreiHayamimAlef': divreiHayamimAlef,
  'DivreiHayamimBeis': divreiHayamimBeis,
};

const Map<String, Map<String, List<List<String>>>> tanach = {
  'Torah': _torah,
  'Neviim': _neviim,
  'Kesuvim': _kesuvim,
};
