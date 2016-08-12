# Cut the Array

## Interviewer Statement

```
// You are given an array (or List, it doesn't matter) of integer numbers greater than 0.
// A cut operation is performed such all the elements of the array are reduced by the lowest element on it.
// Example of cut operation:
// array: [ 2,3,4,5,2 ]
// lowest item: 2
// array after cut operation: [ 0,1,2,3,0 ]

// write a function that performs a cut operation on an array until all the elements of the array are 0
// the function will return the number of elements greater than 0 on each iteration
```

## Test cases

```
Input:
[ 2, 3, 4, 2, 3, 6 ]

Output:
6
4
2
1
```

Explanation:
On the first iteration all the elements are greater than 0, so the result is 6.

Second iteration:
the resulting array after perfomed the cut operation is
`[ 0, 1, 2, 0, 1, 4 ]`
So the elements greater than 0 are 4.

Third iteration:
The array after the cut operation is:
`[ -1, 0, 1, -1, 0, 3 ]`
So the elements greater than 0 are 2.

Fourth iteration:
The array after the cut operation is:
`[ -2, -1, 0, -2, -1, 2 ]`
So the elements greater than 0 is just 1.

With a fifth iteration, all the elements would be less than 0, so the program ends.

## Observations

- As we don't care about the numbers less or equals 0, you can let them out (so in the example, the 3rd iteration would be `[ 1, 3 ]`)
- As the order doesn't matter, the candidate can order the array to get the lowest item.
- The main problem for the candidate is to figure it out than in an even iteration the tree doubles its height and in an odd iteration the tree grows 1 meter ( += 1 ). It doesn't have to be a math problem only.


## Possible solutions

### Fine solution

```
public List<Integer> cutTheSticks(List<Integer> nums, int shortest) {
    List<Integer> result = new ArrayList<Integer>();
    for(Integer num : nums){
        int newNum = num - shortest;
        if(newNum > 0) result.add(newNum);
    }
    return result;
}

public void printIterations(List<Integer> nums) {
    int size = nums.size();
    List<Integer> newNums = nums;

    while (size > 0) {
        System.out.println(size);
        Collections.sort(newNums);
        int shortest = newNums.get(0);
        newNums = cutTheSticks(newNums, shortest);
        size = newNums.size();
    }
}
```

### Better solution

```
public void printIterations(List<Integer> nums) {
    int size = nums.size();
    int previous;

    Collections.sort(nums);
    System.out.println(size);

    previous = nums.get(0);
    for(int i = 0; i < nums.size(); i++) {
        if(nums.get(i) != previous) {
            System.out.println(size - i);
        }
        previous = nums.get(i);
    }
}
```
