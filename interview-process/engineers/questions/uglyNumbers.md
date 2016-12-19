[Home](../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Ugly Numbers

"Ugly Numbers" are 1 and those whose prime factors are **only** 2, 3, and 5.

For example:

| Number | is "Ugly" because       | is not "Ugly" because it is...
| -----: | :---------------------: | ------------------------------
|  1     | by definition           |
|  2     | by definition           |
|  3     | by definition           |
|  4     | 2<sup>2</sup>           |
|  5     | by defintion            |
|  6     | 2 &times; 3             |
|  7     |                         | prime
|  8     | 2<sup>3</sup>           |
|  9     | 3<sup>2</sup>           |
| 10     | 2 &times; 5             |
| 11     |                         | prime
| 12     | 2<sup>2</sup> &times; 3 |
| 13     |                         | prime
| 14     |                         | 2 &times; 7 (which is not "Ugly")
| 15     | 3 &times; 5             |

## Interviewer Statement
```
// "Ugly Numbers" are 1 and those whose prime factors are only 2, 3, and 5.
// Here are the first few: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15
// Write a program that prints the 1500'th "Ugly" number.
```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/hackerrank/coding/questions/303777/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Problem observations

- Make sure the candidate understands the problem &mdash; _e.g._
  - why the first few (above) are "Ugly"
  - why the numbers not in the list are not "Ugly"
- Some candidates get "fixated" on using the modulo operator (`%` in many languages) to check 'is a multiple of' (in some cases, perhaps, because of recent(?) experience with the [FizzBuzz](fizzbuzz.md) problem?)
- Despite the examples, some candidates...
  - assume "Ugly" numbers must be multiples of **all** of {2, 3, 5}
  - do not consider powers of any 1 of the factors (_e.g._, 81 = 3<sup>4</sup>)

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
