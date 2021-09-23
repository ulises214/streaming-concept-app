import 'package:big_numbers/big_numbers.dart';

String numberShorter(int value) {
  return simplifyNumber('$value');
  // const units = <int, String>{
  //   1000000000: 'B',
  //   1000000: 'M',
  //   1000: 'K',
  // };
  // return units.entries
  //     .map((e) => '${value ~/ e.key}${e.value}')
  //     .firstWhere((e) => !e.startsWith('0'), orElse: () => '$value');
}
