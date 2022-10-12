import 'tasks/1/delimeters_calculator.dart';

void main() {
  try {
    var a = -30;
    var b = 20;
    print('Greatest common divisor of $a and $b: '
        '${DelimetersCalculator.gcd(a, b)}');
    print('Least common multiple of $a and $b: '
        '${DelimetersCalculator.lcm(a, b)}');
  } catch (e) {
    print('Crash and burn: $e');
  }
}
