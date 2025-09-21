// How to create variables:
var x;
let y;

// How to use variables:
x = 5;
y = 6;

// Output the sum of x and y
console.log(x + y); // Output: 11

// Print a simple string
console.log("hello world");

// Print a number
console.log(3);

// Print the result of an addition
console.log(4 + 5);

// Declare a variable and print its value
var num = 34;
console.log(num);

// Declare a string variable and print its value
var s = "uzzal";
console.log(s);

// Declare an object and print its type
var obj = {
 name: "uzzal",
};
console.log(typeof obj); // Output: object

// Declare a number variable and print its type
var t = 5;
console.log(typeof t); // Output: number

// Declare a boolean variable and print its type
var tr = true;
console.log(typeof tr); // Output: boolean

// Declare two numbers and calculate their sum
var n1 = 70.78;
var n2 = 70;
var result = n1 + n2;

// Convert the result to an integer and print it
console.log(parseInt(result)); // parseInt converts decimal to integer

// Declare a string containing a number and another number
var n3 = "100.555";
var n4 = 100;

// Convert the string to a float, fix to 2 decimal places, and print it
console.log(parseFloat(n3).toFixed(2)); // Output: 100.56

// Convert the string to an integer, add it to n4, and print the result
console.log(parseInt(n3) + n4); // Output: 200

// Example of if-else statements
var weather = "rain";

// Check the value of weather and print corresponding messages
if (weather == "hot") {
    console.log("ami barie jabo"); // Output if weather is hot
} else if (weather == "rain") {
    console.log("it is rain day"); // Output if weather is rain
} else {
    console.log("ami kothao jabo na"); // Output for other cases
}