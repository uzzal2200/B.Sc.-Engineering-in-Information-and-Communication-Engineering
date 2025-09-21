// Declare an array named 'friend'
var friend = ["uzzal", "p", "ual"];
console.log(friend); // Print the entire array

// Access and print the first element of the array
console.log(friend[0]);

// Add a new element "salam" to the end of the array
friend.push("salam");
console.log(friend);

// Remove the last element of the array
friend.pop();
console.log(friend);

// Add a new element "u" to the beginning of the array
friend.unshift("u");
console.log(friend);

// Remove the first element of the array
friend.shift();
console.log(friend);

// Concatenate "c" to the array ["a", "b"] and print the result
console.log(["a", "b"].concat("c"));

// Reverse the order of elements in the 'friend' array
friend.reverse();
console.log(friend);

// Declare a new array 'n'
var n = ["ami", "tumi", "life", "diye", "dibo", "kmn"];

// Extract a portion of the array from index 2 to 4 (excluding 4) and print it
console.log(n.slice(2, 4));

// Find the index of the element "dibo" in the array
console.log(n.indexOf("dibo"));

// Try to find the index of a non-existent element "amii" (will return -1)
console.log(n.indexOf("amii"));