class Solutions {
  containsDuplicates(List<int> array) {
    array.sort();
    for (var i = 1; i < array.length; i++) {
      if (array[i] == array[i - 1]) {
        return true;
      }
    }
  }
}
