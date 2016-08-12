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

first growth cycle is spring so it doubles its height (2), 2nd growth cycle is summer so it grows 1 meter (3). 3rd growth cycle is spring again so it doubles its height (6). and last growth cycle is summer so it grows 1 meter. Final answer is 7.

## Observations

- This problem shouldn't be considered as a math problem. The thing here is that the candidate has to figure it out that in an even iteration the tree grows double its height `(*= 2)` and in an odd iteration its height grows 1 meter `(+=1)`.

## Possible solutions

### Fine solution in java

```
public int getUtopianTree(int cycles, int initialSize) {
    int finalSize = initialSize;
    for(int i = 0; i < cycles; i++) {
        if(i%2 == 0) finalSize *= 2;
        else finalSize += 1;
    }
    System.out.println(finalSize);
}
```

###Math solution (unusual, they would have to know the math behind)

```
public static void getUtopianTree(int n) {
    int height;
    if(n%2 == 0)
        height = (int)(Math.pow(2, n/2) - 1)*2 + 1;
    else
        height = (int)(Math.pow(2, n/2 + 1) - 1)*2;  
    System.out.println(height);
}
```

### Super extra nice solution

```
public void getUtopianTree(int cycles) {
	System.out.println(~(~1<<(cycles>>1)) << cycles%2);
}
```
