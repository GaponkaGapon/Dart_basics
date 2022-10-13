Set<int> readDigits(List<String> words) {
  var digits = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };

  var res = <int>{};

  for (var word in words) {
    if (digits[word.toLowerCase()] != null) {
      res.add(digits[word.toLowerCase()]!);
    }
  }

  return res;
}
