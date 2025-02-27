# Cut the Array

## Interviewer Statement

```
// A cut operation subtracts the lowest element of the array from each positive number in that array.
// Example of cut operation:
// array: [ 2,3,4,5,2 ]
// lowest item: 2
// array after cut operation: [ 0,1,2,3,0 ]
// Problem:
// You have an array or list of integer numbers greater than 0.
// Write a function that performs a cut operation until all the elements of the array are 0.
// The function must return a list with the amount of elements greater than 0 on each iteration
```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/hackerrank/coding/questions/157954/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

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
`[ 0, 0, 1, 0, 0, 3 ]`
The elements greater than 0 are 2.

Fourth iteration:
The array after the cut operation is:
`[ 0, 0, 0, 0, 0, 2 ]`
The elements greater than 0 is just 1.

If running a 5th iteration, all the elements would be 0, so the program ends.

## Observations

- You can leave out numbers that are less or equal to 0. For example, the 3rd iteration would be [1, 3].
- The order of the array does not matter, the candidate can order the array to get the lowest item.
- One way to turn the proposed `O(n lg n)` solution into a linear one (`O(n)`) is to use a counting sort (`O(n + k)`) instead of a general sort. However, that works only if we can assume that elements in the array are in a somewhat small range relative to `n` (`k` is the upper bound of the range.)


## Possible solutions

### Fine solution O(n^2)

```
public ArrayList<Integer> cutTheSticks(ArrayList<Integer> nums, int shortest) {
    ArrayList<Integer> result = new ArrayList<Integer>();
    for(Integer num : nums){
        int newNum = num - shortest;
        if(newNum > 0) result.add(newNum);
    }
    return result;
}

public ArrayList<Integer> printIterations(ArrayList<Integer> nums) {
    int size = nums.size();
    ArrayList<Integer> newNums = nums;

    ArrayList<Integer> answer = new ArrayList<Integer>();

    while (size > 0) {
        answer.add(size);
        Collections.sort(newNums);
        int shortest = newNums.get(0);
        newNums = cutTheSticks(newNums, shortest);
        size = newNums.size();
    }

    return answer;
}
```

### Better solution O(n lg(n))
```
public ArrayList<Integer> printIterations(ArrayList<Integer> nums) {
    int size = nums.size();
    int previous;

    ArrayList<Integer> answer = new ArrayList<Integer>();

    Collections.sort(nums);
    System.out.println(size);
    answer.add(size);

    previous = nums.get(0);
    for(int i = 1; i < nums.size(); i++) {
        if(nums.get(i) != previous) {
            System.out.println(size - i);
            answer.add(size - i);
        }
        previous = nums.get(i);
    }

    return answer;
}
```
