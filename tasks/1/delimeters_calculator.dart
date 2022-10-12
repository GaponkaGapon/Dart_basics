class DelimetersCalculator {
  static int gcd(int a, int b) {
    a = a >= 0 ? a : -a;
    b = b >= 0 ? b : -b;

    if (b > a) {
      var temp = a;
      a = b;
      b = temp;
    }

    if (a == 0) {
      throw Exception('Both arguments are equal to 0');
    }

    while (b != 0) {
      var temp = a % b;
      a = b;
      b = temp;
    }

    return a;
  }

  static int lcm(int a, int b) {
    if (a == 0) {
      throw Exception('First argument is equal to 0');
    }

    if (b == 0) {
      throw Exception('Second argument is equal to 0');
    }

    var res = (a ~/ gcd(a, b)) * b;
    res = res >= 0 ? res : -res;
    return res;
  }
}
