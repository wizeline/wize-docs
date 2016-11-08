[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Anagram clasification

## Interviewer Statement
```
// Anagrams are words with exactly the same letters in different order
// e.g., AMOR, ROMA, and MORA
//
// Write a function that...
// - receives an Array of words
// - prints the words found in the Array
//   - each set of anagrams on a line
//   - separate words with ' - '
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


## Possible Solutions

### Javascript
Using normal iterator. This is the easiest approach to solve this problem.

```javascript
const anagrams = (words) => {
    var dictionary = {};
    words.forEach(word => {
        var sortedLettersInWord = word.split('').sort().join('');
        if (!dictionary[sortedLettersInWord]) {
          dictionary[sortedLettersInWord] = [];
        }
        dictionary[sortedLettersInWord].push(word);
    });

  Object.keys(dictionary).forEach(wordAnagram => {
    console.log(dictionary[wordAnagram].join(' - '));
  });
}

const wordsArray = ['AMOR', 'XISELA', 'JAMON', 'ROMA', 'OMAR', 'MORA', 'ESPONJA', 'RAMO', 'JAPONES', 'ARMO', 'MOJAN', 'MARO', 'ORAM', 'MONJA', 'ALEXIS'];

anagrams(wordsArray);
```

Using reduce array helper function.
This is a creative solution, maybe the candidate want to show domain and strength in the language.

```javascript
const anagrams = (words) => {
  const dictionary = words.reduce((acumulator, word)=> {
    var sortedLettersInWord = word.split('').sort().join('');
    if (!acumulator[sortedLettersInWord]) {
      acumulator[sortedLettersInWord] = [];
    }
    acumulator[sortedLettersInWord].push(word);
    return acumulator;
  }, {});

  Object.keys(dictionary).forEach(wordAnagram => {
    console.log(dictionary[wordAnagram].join(' - '));
  });
}

const wordsArray = ['AMOR', 'XISELA', 'JAMON', 'ROMA', 'OMAR', 'MORA', 'ESPONJA', 'RAMO', 'JAPONES', 'ARMO', 'MOJAN', 'MARO', 'ORAM', 'MONJA', 'ALEXIS'];

anagrams(wordsArray);
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
