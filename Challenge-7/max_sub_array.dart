class Solution {
  MaxSubArray(List<int> array) {
    int sum = 0;
    int maxSum = array[0];
    for (var i = 0; i < array.length; i++) {
      for (var j = i; j < array.length; j++) {
        sum += array[j];
        maxSum = maxSum > sum ? maxSum : sum;
      }
    }
    return maxSum;
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.MaxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
}
