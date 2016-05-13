# Matrix Product

Write a function to solve the problem between 2 matrices. Matrices could be any size, not necessarily a square.

## Problem observations
- Make sure that you consider the case where you cannot get the product of a pair of matrices. Example:
| 1     | 2     | 3 
| ---   | ---   | ---
| 4     |5      | 6

        *

| 7     | 8     |
| ---   | ---   |
| 9     |10     |
| 11    |12     |

        =

| (1 * 7) + (2 * 9) + (3 * 11)| (1 * 8) + (2 * 10) + (3 * 2) |
| ----------------------------|------------------------------|
| (4 * 7) + (5 * 9) + (6 * 11)| (4 * 8) + (5 * 10) + (6 * 2) |

## Function prototype
```javascript
function mutiplicateMatrix(a, b) {
  // Code here
}
```
