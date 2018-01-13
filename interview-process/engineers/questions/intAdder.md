[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Integer Adder

Write a method that implements an integer adder. Given two arrays of integers where each position in the array contains an integer between 0 and 9. Return an array with the result of the addition of the two arrays of integers.

## Interviewer Statement

```
// Write a method that implements an integer adder.
// Given two arrays of integers where each position in the array contains an integer between 0 and 9.
// Return an array with the result of the addition of the two arrays of integers.
// 
// Examples:
// [1, 0],    [5] => [1, 5] 
// [2, 6], [3, 4] => [6, 0]
```

### HackerRank

This problem is also
[available](https://www.hackerrank.com/x/library/personal/mine/coding/questions/291885/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Problem Observations

- It's only possible to do addition between digits, e.g., not 15 + 15, maximum 9 + 9.
- Verify that the solution covers the case when there is carry after adding both arrays. Example: `[5] + [6] => [1,1]`

## Test Cases

```
[1, 0],    [5] => [1, 5]  # 10 +  5 = 15 -- no carry
[2, 6], [3, 4] => [6, 0]  # 26 + 34 = 60 --    carry
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
