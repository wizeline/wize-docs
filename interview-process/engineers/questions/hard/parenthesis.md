# Reverse parenthesis
Write a method that for a given input string, reverse all the characters inside parentheses. Consider nested parentheses.

## Observations
- How to solve it? Using a stack and a queue.

## Function prototype
```javascript
function reverseParenthesis(input) {
  // Code here
}
```

## Test cases
```javascript
foobarbaz => foobarbaz
foo(bar)baz => foorabbaz
foo(bar(baz))blim => foo(barzab)blim => foobazrabblim
```
