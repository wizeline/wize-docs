[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Make substring!

## Interviewer Statement

```
// Write a function to determine whether an input string x is a substring of another input string y.
// For example...
// ("bat", "abate") => true
// ("bat", "beat")  => false
```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/hackerrank/coding/questions/292185/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

## Test Cases

```
"bat",           "abate"                                                                       => true
"bat"            "beat"                                                                        => false
"first"          "The ford motor company introduce the fierce motor engine for the first time" => true
"cdefg",         "abcabcdabcdefabcdddefghi                                                     => false
"aab",           "aaadaabac                                                                    => false
"a",             ""                                                                            => false
"",              "abc"                                                                         => true
"",              "",                                                                           => true
"theSameString", "theSameString"                                                               => true
"ab",            "abc"                                                                         => true
"bc",            "abc"                                                                         => true
"bat"            "ba"                                                                          => false
```

## Observations
- 20 mins FOR AN EXPERIENCED, 40 mins FOR ROOKIE
- Basically implement something similar string.substring without using this function or any other similar function (string.find, string.contains, etc).
- Minus points if the candidate uses string functions

## Other test cases
Once the candidate has a solution, perhaps ask what other kinds of test cases / input they would use. Share these only if the candidate doesn't identify them — especially if the proposed solution wouldn't handle them!

### Non-strings

If the candidate's chosen language has dynamic typing &mdash; _e.g._, JavaScript, Python, Ruby, _etc._

- does the candidate consider non-string input? _e.g._,

```
// ("bat", 0)    => ?
// (null, "bat") => ?
// ({}, [])      => ?
```

  - what do they think should happen? why?
    - raise error / throw exception?
    - simply return false?
    - other idea(s)?

At least to see how the candidate thinks through/about it; if there's enough time, giving another problem might be more interesting and informative than actually coding these details.

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
