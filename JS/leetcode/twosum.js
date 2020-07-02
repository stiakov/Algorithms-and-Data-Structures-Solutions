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


// Brute Force Approach
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
const twoSum = function (nums, target) {
  let couple = undefined;
  for (idx = 0; idx < nums.length; idx ++) {
      for (jdx = idx + 1; jdx < nums.length; jdx ++) {
          if (nums[idx] + nums[jdx] == target) {
              couple = [idx, jdx];
              break;
          }
          if (couple) break;
      }
  }
  return couple;
};



var twoSum = function (nums, target) {
  const collection = indexCollector(nums);
  console.log(collection)
  let idx = 0
  let couple = [];
  let pairFound = false;

  while (!pairFound && idx < nums.length) {
    const value = nums[idx];
    const pair = target - value;

    if (pair == value && collection[value].length > 1) {

      couple = [collection[value][0], collection[value][1]];
      pairFound = true;

    } else if (collection.hasOwnProperty(pair)) {

      console.log(collection[value].length)
      couple = [collection[value][0], collection[pair][0]];
      pairFound = true;

  }

    idx++;
  }

  return couple;
};

function indexCollector(nums) {
  const collection = {};

  nums.forEach((num, idx) => {
    if (collection.hasOwnProperty(num)) {
      collection[num].push(idx);
    }
    else {
      collection[num] = [idx];
    }
  });
  return collection;
}


// console.log(twoSum([8, 7, 6, 15, 8], 16));
// console.log(twoSum([2, 7, 11, 15], 9));
console.log(twoSum([3, 2, 6], 6));
