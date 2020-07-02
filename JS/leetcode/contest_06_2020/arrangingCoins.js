/* ARRANGING COINS
You have a total of n coins that you want to form in a staircase shape, where every k-th row must have exactly k coins.
Given n, find the total number of full staircase rows that can be formed.
n is a non-negative integer and fits within the range of a 32-bit signed integer.
Example 1:
n = 5
The coins can form the following rows:
¤
¤ ¤
¤ ¤

Because the 3rd row is incomplete, we return 2.
Example 2:

n = 8

The coins can form the following rows:
¤
¤ ¤
¤ ¤ ¤
¤ ¤

Because the 4th row is incomplete, we return 3. */

/**
 * @param {number} n
 * @return {number}
 */

//  BRUTE FORCE APPROACH
var arrangeCoins = function(n) {
 let sum = 0, iterator = 0, remainder = n;
  while ((n > 0) && (sum + iterator < n)) {
    iterator++;
    sum += iterator
 }
 return iterator
};

console.log(arrangeCoins(5)); // 2
console.log(arrangeCoins(6)); // 3
console.log(arrangeCoins(12)); // 4
console.log(arrangeCoins(0)); // 0

