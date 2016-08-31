[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Anagram clasification

## Interviewer Statement
```
// Write a function that...
// - receives an Array of words
// - prints the sets of anagrams
//
// e.g.,
//
// Given:
// ['AMOR', 'XISELA', 'JAMON', 'ROMA', 'OMAR', 'MORA', 'ESPONJA', 'RAMO', 'JAPONES', 'ARMO', 'MOJAN', 'MARO', 'ORAM', 'MONJA', 'ALEXIS']
//
// Print:
// AMOR - ROMA - OMAR - MORA - RAMO - ARMO - MARO - ORAM
// MONJA - JAMON - MOJAN
// ESPONJA - JAPONES
// ALEXIS - XISELA
```

## Problem considerations
An anagram is a type of word play, the result of rearranging the letters of a word or phrase to produce a new word or phrase, using all the original letters exactly once.

Lines may be printed in any order; the anagrams within each line may be printed in any order.

## Observations
- This problem is to test data structures, the best solution is using a hash map and the key is the word reordered alphabetically. Example:
```javascript
{
  'AMOR' : ['AMOR', 'ROMA', 'MORA' ...],
  'AJMNO': ['JAMON', 'MONJA'],
  ...
}
```

then simply print each array `join`()ed with `" - "`.

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
