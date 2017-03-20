[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Integer Adder

Write a method that implements an integer adder. Given two arrays of integers where each position in the array contains an integer
<= 9. Return an array with the result of the addition of the two.

## Interviewer Statement
```
// Write a method that implements an integer adder. Given two arrays of integers where each position in the array contains an integer <= 9. Return an array with the result of the addition of the two.
```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/personal/mine/coding/questions/291885/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Problem observations
- It's only possible to do addition between digits. e.g. not 15 + 15, maximum 9 + 9

## Test cases
```
[1, 0],    [5] => [1, 5]  # 10 +  5 = 15 -- no carry
[2, 6], [3, 4] => [6, 0]  # 26 + 34 = 60 --    carry
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
