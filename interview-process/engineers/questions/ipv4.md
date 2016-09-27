[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Validate an IP version 4

## Interviewer Statement
```
// Write a function that receives a string
// - return true  if it's a valid IP version 4 address
// - return false if not
//
// For example...
// "0.0.0.0"         => true
// "255.255.255.255" => true
// "0.0.0"           => false
// "256.256.256.256" => false

```

## Problem considerations
An IP version 4 is formed by 4 parts: A.B.C.D and each part must have a value between 0-255.

## Observations
- This is an easy problem and if it's not done by 15 minutes you may dismiss the candidate or put another problem.
- If he resolves this in more that 15 min you *MUST* add another problem (if there's still time)
- Plus points if he does not use REGEX
- The point is to validate simple code instructions if the candidate uses regex ask him to do the problem without them.

## Other test cases
Once the candidate has a solution, perhaps ask what other kinds of test cases / input
they would use. Share these only if the candidate doesn't identify them &mdash; _especially_ if the proposed solution wouldn't handle them!

```
"123.10.231.0"    => true
"1.2.3.4.5"       => false
"256.0.0.0"       => false
"123.-10.231.0"   => false
"a.b.c.d"         => false
""                => false

// non-strings if the language has dynamic typing -- e.g., JavaScript, Python, Ruby, etc.
0  => false
[] => false
etc.
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
