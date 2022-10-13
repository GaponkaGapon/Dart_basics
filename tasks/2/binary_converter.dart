class BinaryConverter {
  static String intToBinary(int val) {
    int mask = 1;

    // Should work with ints on any platform I hope
    while (mask << 1 != 0) {
      mask <<= 1;
    }

    var res = StringBuffer();

    while (mask != 0) {
      if (val & mask != 0) {
        res.write('1');
      } else {
        if (res.length != 0) {
          res.write('0');
        }
      }

      mask >>>= 1;
    }

    return res.toString();
  }

  static int binaryToInt(String binaryString) {
    var res = 0;
    var i = 0;

    do {
      res <<= 1;

      if (binaryString[i] == '1') {
        res |= 1;
      } else if (binaryString[i] != '0') {
        throw Exception('Invalid binary string');
      }

      i++;
    } while (i < binaryString.length);

    return res;
  }
}
