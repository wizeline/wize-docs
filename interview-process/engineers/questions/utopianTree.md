[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md)

# Utopian tree

## Interviewer Statement
```
// The Utopian Tree goes through 2 growth cycles every year. Each spring, it doubles on height. Each summer, its
// height increases 1 meter.
// For example:
// One growth cycle: Spring
// Three growth cycles: spring-summer-spring
// Problem:
// Someone plants a utopian tree with an initial height of 1 meter. How tall will the tree be after N growth cycles?
// Write a function that prints the height of a utopian tree after N cycles.
// The function must receive an integer number N
```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/hackerrank/coding/questions/141300/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Test cases

Example:
N = 1
Output = 2

The first growth cycle is spring so it doubles its height.

N = 4
Output = 7

The first growth cycle is spring so it doubles its height (2), the second growth cycle is summer so it grows 1 meter
(3). The third growth cycle is spring again so it doubles its height (6). The last growth cycle is summer so it grows
1 meter.
Final answer is 7.

## Observations

- This is not a math problem. The candidate should figure out that, in an even iteration, the tree grows double its
height `(*= 2)` and in an odd iteration the tree grows 1 meter `(+=1)`.
- After the interviewees get the O(n) solution, encourage them to get a more polished solution.
There is a 2^N pattern in the response: 1, 2, **3**, 6, **7**, 14, **15**, 30, **31**...
If the number is even we subtract 2 and if it is odd we subtract 1. In this case, the power of 2 in could be taken in
pairs. We would need to do a ceil of N / 2 to get the correct power.
We can substract (n & 1) so if the number is even, n & 1 will be equal to 1, if the number is odd n & 1 will be equal
to 0.


## Possible solutions

### Fine solution in java O(n)

```
public int getUtopianTree(int n) {
    int finalSize = 1;
    for(int i = 0; i < n; i++) {
        if(i%2 == 0) finalSize *= 2;
        else finalSize += 1;
    }
    System.out.println(finalSize);
}
```

### Nice solution O(1)

```
public void getUtopianTree(int n) {
  int exp = (int)Math.ceil((double)n / 2) + 1;

  int value = (int)Math.pow(2, exp) - 1;

  System.out.println(value - (n & 1));
}
```

### Math solution (unusual, they would have to know the math behind)

```
public void getUtopianTree(int n) {
    int height;
    if(n%2 == 0)
        height = (int)(Math.pow(2, n/2) - 1)*2 + 1;
    else
        height = (int)(Math.pow(2, n/2 + 1) - 1)*2;  
    System.out.println(height);
}
```
