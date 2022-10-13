Set<int> searchNums(String str) {
  var nums = <int>{};

  for (var word in str.split(' ')) {
    int? elem = int.tryParse(word);

    if (elem != null) {
      nums.add(elem);
    }
  }

  return nums;
}
