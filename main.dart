import 'tasks/1/delimeters_calculator.dart';
import 'tasks/2/binary_converter.dart';

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
  } catch (e) {
    print('Crash and burn: $e');
  }
}
