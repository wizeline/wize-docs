[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md)

# Anagram clasification

Write a function that receives an Array of words and prints a clasification of these words by its anagram.

## Interviewer Statement
```
// Write a function that receives an Array of words and prints a clasification of these words by its anagram.
//
// Input:
// var words = ['AMOR', 'XISELA', 'JAMON', 'ROMA', 'OMAR', 'MORA', 'ESPONJA', 'RAMO', 'JAPONES', 'ARMO', 'MOJAN', 'MARO', 'ORAM', 'MONJA', 'ALEXIS'];
//
// Output:
// AMOR - ROMA - OMAR - MORA - RAMO - ARMO - MARO - ORAM
// MONJA - JAMON - MOJAN
// ESPONJA - JAPONES
// ALEXIS - XISELA
```

## Problem considerations
An anagram is a type of word play, the result of rearranging the letters of a word or phrase to produce a new word or phrase, using all the original letters exactly once.

## Observations
- This problem is to test data structures, the best solution is using a hash map and the key is the word reordered alphabetically. Example:
```javascript
{
  'AMOR' : ['AMOR', 'ROMA', 'MORA' ...],
  'AJMNO': ['JAMON', 'MONJA'],
  ...
}
```

## Input
```javascript
var words = ['AMOR', 'XISELA', 'JAMON', 'ROMA', 'OMAR', 'MORA', 'ESPONJA', 'RAMO', 'JAPONES', 'ARMO', 'MOJAN', 'MARO', 'ORAM', 'MONJA', 'ALEXIS'];
```

## Output
The output is all the anagrams classified separated by a hyphem.
```javascript
AMOR - ROMA - OMAR - MORA - RAMO - ARMO - MARO - ORAM
MONJA - JAMON - MOJAN
ESPONJA - JAPONES
ALEXIS - XISELA
```

[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md)
