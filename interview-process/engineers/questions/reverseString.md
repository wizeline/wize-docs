[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Reverse a string

Write a method that reverses the string. *Avoid the use of built-in string functions*

## Inteviewer Statement
``` javascript
// Write a method that reverses a string. Avoid the use of built-in string reversal or split functions.
// We'll start with the solution you come up with and then see if we can make it more performant.

function reverse(str) {

}
```

Sample solution
``` javascript
function reverse(str) {
  // In javascript, strings are immutable. Copying is required.
  // In some other languages like C/C++, Java or C#, this is not needed and the optimal solution does the swap in-place.
  var newStrArr = [];
  for(var i = 0; i < str.length / 2; i++) {
    var temp = str[i];
    newStrArr[i] = str[str.length - i - 1];
    newStrArr[str.length - i - 1] = temp;
  }

  return newStrArr.join('');
}
```

## Test cases
```
'' => ''
'A laborer' => 'rerobal A'
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
