secondLargest(List array) {
  int largest = array[0];
  int? secondLargest = 0;
  for (var i = 0; i < array.length; i++) {
    if (largest < array[i]) {
      secondLargest = largest;
      largest = array[i];
    } else if (array[i] < largest && array[i] > secondLargest) {
      secondLargest = array[i];
    }
  }
  return secondLargest;
}

void main(List<String> args) {
  print(secondLargest([1, 5, 2, 7, 4, 9]));
}
