const reverse = num => {
  let numArr = num.toString().split("");

  if (num > 0 && numArr[numArr.length - 1] != 0) {
    console.log(numArr.reverse().join(""));
  } else if (numArr.includes("0")) {
    let i = numArr.indexOf("0");
    console.log(i);
    let zero = numArr.splice(i, 1);
    console.log(numArr.reverse().join(""));
  }
};
//* Input: 123
// Output: 321

//TODO Input: -123
//TODO Output: -321

//* Input: 1230
// Output: 321
let number = 1230;
reverse(number);
