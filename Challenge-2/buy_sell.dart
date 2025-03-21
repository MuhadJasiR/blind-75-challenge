class Solution {
  MaxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;
    int minPrice = prices[0];
    int maxProfit = 0;
    for (var i = 0; i < prices.length; i++) {
      minPrice = prices[i] < minPrice ? prices[i] : minPrice;
      int currentProfit = prices[i] - minPrice;
      maxProfit = currentProfit > maxProfit ? currentProfit : maxProfit;
    }
    return maxProfit;
  }
}
