class Solutions {
  containsDuplicates(List<int> array) {
    Set<int> seen = {};
    for (var i = 0; i < array.length; i++) {
      if (seen.contains(array[i])) {
        return true;
      }
      seen.add(array[i]);
    }
    return false;
  }
}

void main(List<String> args) {
  Solutions solutions = Solutions();
  print(solutions.containsDuplicates([1, 7, 2, 0, 3, 4, 4]));
}
