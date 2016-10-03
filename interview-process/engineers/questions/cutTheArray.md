# Cut the Array

## Interviewer Statement

```
// A cut operation substracts the lowest element of the array from each number in that array.
// Example of cut operation:
// array: [ 2,3,4,5,2 ]
// lowest item: 2
// array after cut operation: [ 0,1,2,3,0 ]
// Problem:
// You have an array or list of integer numbers greater than 0.
// Write a function that performs a cut operation until all the elements of the array are 0.
// The function must return the number of elements greater than 0 on each iteration
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

First iteration: all the elements are greater than 0. The result is 6.

Second iteration:
The array after the cut operation is
`[ 0, 1, 2, 0, 1, 4 ]`
The elements greater than 0 are 4.

Third iteration:
The array after the cut operation is:
`[ -1, 0, 1, -1, 0, 3 ]`
The elements greater than 0 are 2.

Fourth iteration:
The array after the cut operation is:
`[ -2, -1, 0, -2, -1, 2 ]`
The elements greater than 0 is just 1.

If running a 5th iteration, all the elements would be less than 0, so the program ends.

## Observations

- You can leave out numbers that are less or equal to 0. For example, the 3rd iteration would be [1, 3].
- The order of the array does not matter, the candidate can order the array to get the lowest item.


## Possible solutions

### Fine solution O(n^2)

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

### Better solution O(n lg n)
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
#### Observations
- The only way for this solution to become `O(n)` is if we can do a counting sort (`O(n + k)`), but that requires the additional assumption that elements in the array are in a somewhat small range relative to `n` (`k` is the upper bound of the range.)
