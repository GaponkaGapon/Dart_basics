import 'tasks/1/delimeters_calculator.dart';
import 'tasks/2/binary_converter.dart';
import 'tasks/3/search_nums.dart';
import 'tasks/4/count_words.dart';
import 'tasks/5/read_digits.dart';
import 'tasks/6/point.dart';
import 'tasks/7/root_extraction.dart';

void main() {
  try {
    var a = -30;
    var b = 20;

    print('Greatest common divisor of $a and $b: '
        '${DelimetersCalculator.gcd(a, b)}');
    print('Least common multiple of $a and $b: '
        '${DelimetersCalculator.lcm(a, b)}');

    print('$a in binary: ${BinaryConverter.intToBinary(a)}');

    var binaryString = '10100';

    print('Binary int $binaryString in decimal: '
        '${BinaryConverter.binaryToInt(binaryString)}');

    var text =
        'word 123 another word -123 and another word one two SEVEN seven';
    print('Text \'$text\' contains next numbers:');

    for (var num in searchNums(text)) {
      print(num);
    }

    print('Counts of word in text \'$text\'');

    countWords(text.split(' ')).forEach((k, v) {
      print('$k: $v');
    });

    print('Digits in text \'$text\'');

    for (var digit in readDigits(text.split(' '))) {
      print(digit);
    }

    var origin = Point.origin();
    var unitVector = Point.unitVector();
    print('Length of unit vector: ${origin.distanceTo(unitVector)}');

    double val = -27;
    var degree = 3;
    print('Root of $val in degree $degree: ${val.rootExtraction(degree)}');
  } catch (e) {
    print('Crash and burn: $e');
  }
}
