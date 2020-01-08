// Given an array(nums), rotate the array to the right by k steps, where k is non-negative.
// The simplest approach is to rotate all the elements of the array in k steps by rotating the elements by 1 unit in each step.

// for (int i = 0; i < k; i++) {
//     previous = nums[nums.length - 1];
//     for (int j = 0; j < nums.length; j++) {
//         temp = nums[j];
//         nums[j] = previous;
//         previous = temp;
//     }
// }
// }
const rotate = function(nums, k) {
  for (let i = 0; i < k; i++) {
    let n = nums.pop();
    nums.unshift(n);
    console.log(nums);
  }
};
input = [1, 2, 3, 4, 5];
rotate(input, 2);
