extension RootExtraction on double {
  double rootExtraction(int degree) {
    if (degree <= 0) {
      throw Exception('Degree must be more than 0');
    }

    if (this == 0) {
      return 0;
    }

    if (this < 0 && degree % 2 == 0) {
      throw Exception('No solution for negative value and even degree');
    }

    double res = 1;
    double intermediateRes;
    double precision = 0.0001;

    do {
      double resInDegree = 1;

      for (var i = degree - 1; i > 0; i--) {
        resInDegree *= res;
      }

      intermediateRes =
          ((degree - 1) / degree) * res + (this / degree) / resInDegree;

      var temp = intermediateRes;
      intermediateRes = res;
      res = temp;
    } while (res - intermediateRes > precision ||
        res - intermediateRes < -precision);

    return res;
  }
}
