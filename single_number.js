// Given a non-empty array of integers, every element appears twice except for one. Find that single one.
// ALGO: Approach 1: List operation
// Iterate over all the elements in nums
// If some number in nums is new to array, append it
// If some number is already in the array, remove it

//  ALGO: Approach 2: Hash Table
// We use hash table to avoid the O(n)O(n) time required for searching the elements.
// Iterate through all elements in nums
// Try if hash_table has the key for pop
// If not, set up key/value pair
// In the end, there is only one element in hash_table, so use popitem to get it

// Input: [2,2,1]
// Output: 1
let nums = [4, 1, 2, 1, 2];
// Output: 4
const singleNumber = function(nums) {
  for (let i = 0; i < nums.length - 1; ++i) {
    if (nums[i] == nums[i + 1]) {
      console.log(true);
    } else console.log(false);
  }
};
singleNumber(nums);
