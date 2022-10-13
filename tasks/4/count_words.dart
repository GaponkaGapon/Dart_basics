Map<String, int> countWords(List<String> words) {
  var counts = <String, int>{};

  for (var word in words) {
    if (counts.containsKey(word)) {
      counts[word] = counts[word]! + 1;
    } else {
      counts[word] = 1;
    }
  }

  return counts;
}
