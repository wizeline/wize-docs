[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md)

# Utopian tree

## Interviewer Statement
```
// The Utopian Tree goes through 2 cycles of growth every year. Each spring, it doubles in height. Each summer, its
// height increases by 1 meter. Meaning 1 growth cycle is spring and 3 growth cycles is spring-summer-spring.
// If someone plants a utopian tree with an initial height of 1 meter, how tall will it be after N growth cycles.

// Write a function which prints the height of a utopian tree after N cycles.
// your function will receive an integer number N
```

## Test cases

Example:
N = 1
Output = 2

First growth cycle is spring so it doubles its height

N = 4
Output = 7

First growth cycle is spring so it doubles its height (2), 2nd growth cycle is summer so it grows 1 meter (3). 3rd growth cycle is spring again so it doubles its height (6). and last growth cycle is summer so it grows 1 meter. Final answer is 7.

## Observations

- This problem shouldn't be considered as a math problem. The thing here is that the candidate has to figure it out that in an even iteration the tree grows double its height `(*= 2)` and in an odd iteration its height grows 1 meter `(+=1)`.
- After the interviwees get the O(n) solution, we can encourage them to get a nicer solution.
There is a pattern in the response: 1, 2, **3**, 6, **7**, 14, **15**, 30, **31**...
so, it is basically the 2^N pattern and just depending if the number is even we substract 2 and if it is odd we substract 1.
The power of two in this case can be taken in pairs, so we would need to do a ceil of N / 2 to get the correct power.
We can substract (n & 1) so if the number is even, n & 1 will be equals to 1, if the number is odd n & 1 will be equals 0.


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
