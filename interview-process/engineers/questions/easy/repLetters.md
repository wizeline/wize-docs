# First non repeated letter

Write a method that for a given string as input, returns the first non repeated letter.

## Function prototype
```javascript
function FirstNonRepLetter(input) {
  // Code here
}
```

## Test cases
```
'abcdefghija' => b
'hello' => h
'Java' => J
'simplest' => s
```

## Solutions
- Using data structures, a hashmap where you store each letter as key.
