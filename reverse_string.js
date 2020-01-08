// simple answer... built-in method reverse
const reverseString = stringArr => {
  console.log(stringArr.reverse());
};
let input = ["h", "e", "l", "l", "o"];
reverseString(input);

// Approach 2: Two Pointers, Iteration, O(1) Space
const myReverse = arr => {
  console.log("yup");
  let left = 0;
  let right = arr.length - 1;
  while (left < right) {
    char = arr[left];
    arr[left++] = arr[right];
    arr[right--] = char;
  }
  console.log(arr);
};
let input1 = ["c", "h", "r", "i", "s"];
myReverse(input1);
