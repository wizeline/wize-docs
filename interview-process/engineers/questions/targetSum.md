[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[Interview Questions](../../interview-questions.md)

# Target Sum

Write an algorithm to check if the sum of any two numbers in an array/list matches a given target.

## Interviewer Statement
```
// Write an algorithm to check if the sum of any two elements in an array/list matches a given target,
// and return their indexes in an array.
```

## Problem considerations

Commonly there are three approaches to the problem:

- Worst case O(n^2)
- Good one   O(n log n) - rarely seen
- Best case  O(n)


## Observations
- Users should quickly notice the worst case solution, if they don’t consider this a red flag.
- You may want to give him a hint about using data structures if you don’t see any improvement after worst case solution.
- The questions someone asks at the beginning are almost as important as their eventual solution and problem solving approach. Clarifying questions are a window into how they'll work when giving a task within a team.


## Test cases
```

// Easy-introductory cases.

[0, 6, 8, 4], 10
[ 1, 3]

[20, 18,  5,  4, 10, 22], 42  
[ 0, 5]

// Bonus points if he asks what to do when there are multiple solutions (return first one).

[ 3,  5,  6, 18, 13,  0], 18
[ 1, 4] || [ 3,  5]

// Bonus points if he asks what to return when none match (return empty array).

[12, 34, 6, 8], 30
[-1, -1]

[], 10
[-1, -1]

// This test case covers a common mistake in solutions which do not take in account validating index repetition on solution, eg. O(n^2) solution.

[12,  2,  1,  6, 14,  5], 24
[-1, -1]

```

## Solutions

Worst case O(n^2):

- For every element x in the array, iterate over every element y and check for target sum t (x + y == t), excluding same index.

Good one   O(n log n) - rarely seen:

- Sort array
- For every element e in the array, binary search for the complement (target - e)
- Both operations are O(n log n).

Best case  O(n):
 - For every element e in the array, use a hash to store complement (target - e) as key and e as value.
 - Return [key e, value] if e is an existing key.


### JavaScript
```javascript

// O(n)
// Check he uses (key in obj) to check for key existence, because if he checks
// like these: (obj[key]) the condition will be false if the value is a 0.

function targetSum(array, target) {
  var hash = {};
  var val;

  for (index = 0; index < array.length; index++) {
    val = array[index];
    if(val in hash) return [hash[val], index]; // Check he checks
    hash[target - val] = index;
  }

  return [-1, -1];
}

// O(n^2)

function targetSum(array, target) {

  for (i = 0; i < array.length; i++) {
    for (j = 0; j < array.length; j++) {
      if(i === j) continue;
      if(array[i] + array[j] === target) return [i, j];
    }
  }

  return [-1, -1];
}
```

### Ruby
```ruby

# O(n)

def targetSum(array, target)
  hash = {}

  array.each_with_index do |val, index|
    return [index, hash[val]] if hash.has_key? val
    hash[target - val] = index
  end

  return [-1, -1]
end

# O(n^2)

def targetSum(array, target)
  array.each_with_index do |valI, i|
    array.each_with_index do |valJ, j|
      next if i == j
      return [i, j] if valI + valJ == target
    end
  end

  return [-1, -1]
end

```

### Java
```java

// O(n)

public static int[] targetSum(int[] array, int target) {

  Map<Integer,Integer> map =new HashMap<Integer,Integer>();
  int[] answer = new int[]{-1, -1};

  for(int i = 0; i < array.length; i++){
    if(map.containsKey(array[i])){
      answer[0] = map.get(array[i]);
      answer[1] = i;
      return answer;
    }
    map.put(target - array[i], i);
  }

  return answer;
}

// O(n^2)

public static int[] targetSum(int[] array, int target) {

  int[] answer = new int[]{-1, -1};

  for(int i = 0; i < array.length; i++){
    for(int j = 0; j < array.length; j++){
      if(i == j) continue;
      if(array[i] + array[j] == target){
        answer[0] = i;
        answer[1] = j;
        return answer;
      }
    }
  }

  return answer;
}

```

### PHP
```php

// O(n)

<?php

function targetSum($array, $target) {
  $hash = array();

  foreach ($array as $index=>$value) {
    if(array_key_exists($value, $hash)) return array($hash[$value], $index);
    $hash[$target - $value] = $index;
  }

  return array();

}

?>

```


[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[Interview Questions](../../interview-questions.md)
g