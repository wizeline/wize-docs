[Home](../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Wize Numbers

"Wize Numbers" are 1 and those whose prime factors are 2, 3, and/or 5 **only**.

For example:

| Number | Prime Factorization | is Wize?
| -----: | :-----------------: | -----------------
|  1     | --                  | Y (by definition)
|  2     | 2                   | Y
|  3     | 3                   | Y
|  4     | 2<sup>2</sup>       | Y
|  5     | 5                   | Y
|  6     | 2 &times; 3         | Y
|  7     | 7                   | **N**
|  8     | 2<sup>3</sup>       | Y
|  9     | 3<sup>2</sup>       | Y
| 10     | 2 &times; 5         | Y
| 11     | 11                  | **N**
| 12     | 2<sup>2</sup> &times; 3 | Y
| 13     | 13                  | **N**
| 14     | 2 &times; 7         | **N**
| 15     | 3 &times; 5         | Y

## Interviewer Statement

```
// "Wize Numbers" are 1 and those whose prime factors are 2, 3, and/or 5 only.
// Here are the first few: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15
// Write a program that prints the 1500'th "Wize" number.
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
  - why the first few (above) are "Wize"
  - why the numbers not in the list are not "Wize", for example `14`
- Some candidates get "fixated" on using the modulo operator (`%` in many languages) to check 'is a multiple of' (in some cases, perhaps, because of recent(?) experience with the [FizzBuzz](fizzbuzz.md) problem?)
- Despite the examples, some candidates...
  - assume "Wize" numbers must be multiples of **all** of {2, 3, 5}
  - do not consider powers of only one of the factors (_e.g._, 81 = 3<sup>4</sup>)

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
