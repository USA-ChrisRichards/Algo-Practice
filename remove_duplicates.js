//* .splice(2, 0, "drum")
// At index 2 remove 0 elements, and insert "drum"
// let myFish = ['angel', 'clown', 'mandarin', 'sturgeon']
// let removed = myFish.splice(2, 0, 'drum')

const removeDuplicates = function(nums) {
  let j = 0;
  for (i = 1; i < nums.length; i++) {
    if (nums[i] != nums[j]) {
      j++;
      nums[j] = nums[i];
    }
  }
  console.log(nums.length);
  console.log(nums);
};

numArr = [1, 2, 3, 3];
removeDuplicates(numArr);
