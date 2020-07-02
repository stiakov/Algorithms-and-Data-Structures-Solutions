/**
* Given an array of integers, return indices of the two numbers such that they add up to a specific target.
*
* You may assume that each input would have exactly one solution, and you may not use the same element twice.
*
* Example:
*
* Given nums = [2, 7, 11, 15], target = 9,
*
* Because nums[0] + nums[1] = 2 + 7 = 9,
* return [0, 1].
*
*
* @param {number[]} nums
* @param {number} target
* @return {number[]}
*/

// BRUTE FORCE APPROACH
// Time: O(n2), Space: O(1)

const twoSum = function (nums, target) {
  let couple = undefined;
  for (idx = 0; idx < nums.length; idx++) {
    for (jdx = idx + 1; jdx < nums.length; jdx++) {
      if (nums[idx] + nums[jdx] == target) {
        couple = [idx, jdx];
        break;
      }
      if (couple) break;
    }
  }
  return couple || [];
};

// HASH TABLE APPROACH
// Time: O(n), Space: O(n)

function twoSumm(numbers, target) {
  const myHash = {};
  let output = []
  for (i = 0; i < numbers.length; i++) {
    const control = target - numbers[i];
    if (myHash.hasOwnProperty(numbers[i])) {
      myHash[numbers[i]].push(i);
    } else {
      myHash[numbers[i]] = [i];
    }
    if (myHash.hasOwnProperty(control) && i != myHash[control][0]) {
      output = [myHash[control][0], i];
      return output
    }
  }
  return [];
}

console.log(twoSum([8, 7, 6, 15, 8], 16));
console.log(twoSum([2, 7, 11, 15], 9));
console.log(twoSum([3, 2, 6], 6));
console.log(twoSum([8, 7, 6, 15, 8], 16));
console.log(twoSumm([2, 7, 11, 15], 9));
console.log(twoSumm([3, 2, 6], 6));
