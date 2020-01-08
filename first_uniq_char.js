const firstUniqChar = str => {
  //check char with char + 1
  //return index of first non-repeat char
  //hash-map each char and when val of key/char
  //   a["key1"] = "value1";
  var arr = str.split("");
  var obj = {};

  for (var i = 0; i < arr.length; i++) {
    if (!obj[arr[i]]) {
      //If the object doesnt exist
      obj[arr[i]] = 1; //Create obj and set the value to 1
    } else {
      //If it does exist
      obj[arr[i]]++; //Increment that value for that key by 1
    }
  }

  //Now that we have our hash table we want to find the first key with the value of 1 in the object to find the first unique character
  for (key in obj) {
    //Loops through the object
    // console.log(key, "=>", obj[key])
    if (obj[key] === 1) {
      //Finds if the value of the key is equal to 1 when iterating over the object
      console.log(obj);
      console.log(arr.indexOf(key)); //return that index
    }
  }
  console.log(-1);
};

let input = "ababcdefef";
firstUniqChar(input);
