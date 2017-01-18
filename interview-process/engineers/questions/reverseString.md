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

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/personal/mine/coding/questions/289110/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Sample solution
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

Including edge/corner cases:
(Bonus points if they ask what it should do in these cases [requirements gathering])
```
null => null (or language equivalent)
undefined => undefined

// Non-strings in weakly-typed languages. They don't need to support these immediately, a defensive check
// in the function before solving is enough, give credit if they include it or if they add it when
// asked about testing.
[] => ?
{} => ?
123 => ?

// Non-ascii characters:
'Abc🌎' => '🌎cbA'
// Very large inputs - an extension to the original answer.
// There are many ways to do this so you must decide if their answer is appropriate. Not expecting them
// to code this, but a reasonable description of an approach is a good step.
'some string 100,000,000 chars in length' => properly reversed without taking down the machine
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
