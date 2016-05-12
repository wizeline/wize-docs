# Integer Adder

Write a method that implements an integer adder. Given two arrays of integers where each position in the array contains an integer
<= 9. Return an array with the result of the addition of the two.

## Problem observations
- It's only possible to do addition between digits. e.g. not 15 + 15, maximum 9 + 9

## Function prototype
```javascript
function integerAdder(input) {
  // Code here
}
```

## Test cases
```
integerAdder([1, 0], [5]) => [1, 5]
integerAdder([2, 5], [2, 5]) => [5, 0]
```
