# Moving 0s!

Write a function to "move" 0s in an inpit array to the "beginning".

## Observations
- Copy/move 0 found in original array rather than simply using hard-coded 0. example:
```
// traversing & modifying array in place
// ‘classic’ swap works too hard:
int temp = myArray[indexWithNonZero];
myArray[indexWithNonZero] = myArray[indexWithZero];
myArray[indexWithZero]    = temp;

// When simply
myArray[indexWithZero]    = myArray[indexWithNonZero];
myArray[indexWithNonZero] = 0;

```

## Function prototype
```javascript
function moveCeros(input) {
  // Code here
}
```

## Test cases
```
[1, 4,  5, 0, 3, 0, 5, 0] => [0, 0, 0, 1, 4, 5, 3, 5]
[2, -12, 0, 7, 0, -99] => [0, 0, 2, -99, 7, -12]
```
