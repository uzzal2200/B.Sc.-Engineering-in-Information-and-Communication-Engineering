<?php
// Associative array
$person = array(
    "name" => "John",
    "age" => 25,
    "city" => "New York"
);

// Add an element
$person["country"] = "USA";

// Remove an element
unset($person["age"]);

print_r($person);  // Output: Array ( [name] => John [city] => New York [country] => USA )
?>
