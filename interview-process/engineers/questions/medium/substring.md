# Make substring!

Write a function to determine whether an input string x is a substring of another input string y.
For example, "bat" is a substring of "abate", but not of "beat". 

## Observations
- 20 mins FOR AN EXPERIENCED, 40 mins FOR ROOKIE
- Basically implement something similar string.substring without using this function or any other similar function (string.find, string.contains, etc).
- Minus points if the candidate uses string functions

## Function prototype
```javascript
function mySubstring(x, y) {
  // Code here
}
```

## Test cases
```javascript
mySubstring('first', 'The ford motor company introduce the fierce motor engine for the first time') => true
mySubstring('defg', 'abcabcdabcdefabcdddefghi'); => false
mySubstring('aab' , 'aaadaabac'); => true
```
