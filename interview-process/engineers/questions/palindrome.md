[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Palindrome

## Inteviewer Statement
Write a function that returns true/false whether a given string is a palindrome or not with any combination of its characters. 
(A palindrome is a a word, phrase, or sequence that reads the same backward as forward, such as madam or kayak)


## Observations
- How to solve it? Ordering characters in ascending/descending order, then using a stack to push characters findings if a character is duplicated then pop it out. The main idea is to evaluate that:
-- for even string lengths must not be any character left in the stack. 
-- for odd strings should remain one character within the stack.
- NOTE: palindromes are not case sensitive.

## Observations
- Average time to solve this is between 10 to 15 minutes

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

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
