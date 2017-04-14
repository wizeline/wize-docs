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

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/personal/mine/coding/questions/288991/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

The (singular) test input is pre-loaded in the CodePair session's Stdin tab.
The candidate and/or interviewer must check the output "manually."

Because of the "Order does not matter" stipulation, using this problem with HackerRank
requires the use of a
[Custom Checker](http://support.hackerrank.com/hc/en-us/articles/223080547-Creating-a-custom-checker).

As of 6 Feb 2017, however, HackerRank does not support problems with Custom Checkers in CodePair sessions

- According to a HackerRank support person via support chat
- Despite [this page](http://support.hackerrank.com/hc/en-us/articles/219875428-How-do-I-create-questions-for-CodePair-) saying, in part

  > CodePair uses the same questions available in tests.

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

## Test Case

### Input

19 Words:

```
AMOR
XISELA
JAMON
ROMA
OMAR
MORA
MIRAR
ESPONJA
RAMO
JAPONES
RIMAR
ARMO
MOJAN
MARO
ORAM
XISELA
MIMAR
MONJA
ALEXIS
```

**Notes**

- `XISELA` is repeated to test if the solution (incorrectly) eliminates duplicates
- `MIRAR` and `RIMAR` are anagrams; `MIMAR` has the same _letters_, but is _not_ an anagram of them

### Possible Output
```
AMOR - ROMA - OMAR - MORA - RAMO - ARMO - MARO - ORAM
XISELA - ALEXIS - XISELA
JAMON - MOJAN - MONJA
MIRAR - RIMAR
ESPONJA - JAPONES
MIMAR
```

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
This is another way to iterate the array.

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

### Ruby
[Create a Hash](https://docs.ruby-lang.org/en/2.3.0/Hash.html#method-c-new)
that, when it is accessed by a key not already present, associates a new, empty Array with that key.

Append each word to the array associated with the key formed by sorting the word's letters.

```ruby
def print_anagrams(words)
  h = Hash.new { |h, k| h[k] = [] }
  
  words.each { |word| h[word.chars.sort] << word}
  h.each_value { |v| puts v.join ' - ' }
end
```

### PHP (two approaches I've seen)
```php
function printAnagrams($words) { // print function could use foreach instead of array_map, disregard mine.
    $all_anagrams = anagrams($words);
    $lines = array_map(function ($anagram_set) {
        $anagram_set = array_unique($anagram_set);
        return implode(' - ', $anagram_set);
    }, $all_anagrams);
    $lines = implode("\n", $lines);
    echo $lines;
}
```

Standard, hashing the **words**, just like JS or Ruby above
```php
function anagrams($words) {
    $anagrams_map = [];
    foreach($words as $word) {
        $sorted_letters = str_split(trim($word)); // split the word into letters
        sort($sorted_letters); // then sort the letters. Common mistake would be to do this in the line above. Sort returns a boolean. It mutates the passed array.
        
        $hash = implode('', $sorted_letters); // Use the sorted word as hash key.
        $anagrams_map[$hash][] = $word; // You could check that the word does already exist in this step. I do it while printing it's actually faster.
    }
    
    return $anagrams_map;
}
```

OR Using the **number of letters** as the hashing key:
```php
function anagrams($words) {
    $anagrams_map = [];
    foreach ($words as $word) {
        $letters = count_chars($word, 1 /* mode: chars (byte-values) with a frequency greater than zero  */); // using 0 will generate a huge mostly empty array all letters in the Alphabet.
        
        $hash = md5(json_encode($letters)); // or serialize json_encode is not available on HR
        $anagrams_map[$hash][] = $word;
    }
    
    return $anagrams_map;
}
```

The second one is slightly faster (tried it with an array size 65536).



[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
