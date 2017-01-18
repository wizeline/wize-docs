[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Palindrome

## Inteviewer Statement

```
// Write a function that returns true/false whether a given string is a palindrome 
// or not with any combination of its characters. (A palindrome is a a word, phrase, 
// or sequence that reads the same backward as forward, such as madam or kayak)
// NOTE: palindrome is not case sensitive
```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/personal/mine/coding/questions/301571/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Inputs - test cases
- kayAk
- yaml yaMl
- Never odd or even
- No x in Nixon
- ab
- a
- Sample

## Output
- kayAk = true
- yaml yaMl = true
- Never odd or even = true
- No x in Nixon = true
- ab = false
- a = true
- Sample = false

## Observations
- How to solve it? Ordering characters in ascending/descending order, then using a stack to push characters findings if a character is duplicated then pop it out. The main idea is to evaluate that:
  - for even string lengths must not be any character left in the stack. 
  - for odd strings should remain one character within the stack.
- NOTE: palindromes are not case sensitive.
- Average time to solve this is between 10 to 15 minutes

## Possible solutions
```python
def prepare_string(word):
    word = word.lower()
    word = word.replace(' ', '')
    return word

def is_palindrome_unordered(word):
    word = prepare_string(word)
    if word is None or len(word) == 0:
        return False
    if len(word) == 1:
        return True
    word_dict = dict()
    for character in word:
        word_dict[character] = 1 if character not in word_dict.keys() else word_dict[character] + 1
    odd_characters_count = 0;
    for character_count in word_dict.values():
        if character_count % 2 > 0:
            odd_characters_count += 1
    if odd_characters_count <= 1:
        return True
    return False
```

```javascript
function isPalindromeUnordered(word){
    word = prepareString(word).split('').sort();
    var results = [];
    for(var i=0;i<word.length;i++){
        if(results.indexOf(word[i]) !== -1){
            results.pop();
        } else {
            results.push(word[i]);
        }
    }
    
    return word.length % 2 === 0 ? results.length === 0 : results.length === 1;
}

function prepareString(word){
    var output = word.toLowerCase().split(' ').join('');
    return output;
}
```


[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
