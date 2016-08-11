[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[Interview scripts](../../interview-questions.md)

# Target Sum

Write an algorithm to check if the sum of any two numbers in an array/list matches a given target.

## Interviewer Statement
```
// Write an algorithm to check if the sum of any two numbers in an array/list matches a given target, and return them in an array.
```

## Problem considerations

Commonly there are three approaches to the problem:

- Worst case O(n^2)
- Good one   O(n log n) - rarely seen
- Best case  O(n)


## Observations
- Users should quickly notice the worst case solution, if they don’t consider this a red flag.
- You may want to give him a hint about using data structures (hash table) if you don’t see any improvement after worst case solution.


## Test cases
```
[20, 18,  5,  4, 10, 22]  42  
[20, 22]

[ 3,  5,  6, 18, 13,  0]  18
[  5, 13] || [18,  0]

// It would be good if he asks what to return when none match.
[12,  2,  1,  6, 14,  5]  24
[]
```

[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md)
