[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md)
[Interview Questions](README.me)

# Validate an IP version 4

Write a function that receives a string containing an IP version 4 and returns true if it's a valid IP or false on the contrary.

## Interviewer Statement
```
// Write a function that receives a string containing an IP version 4 and returns true if it's a valid IP or false on the contrary.
```

## Problem considerations
An IP version 4 is formed by 4 parts: A.B.C.D and each part must have a value between 0-255.

## Observations
- This is an easy problem and if it's not done by 15 minutes you may dismiss the candidate or put another problem.
- If he resolves this in more that 15 min you *MUST* add another problem (if there's still time)
- Plus points if he does not use REGEX
- The point is to validate simple code instructions if the candidate uses regex ask him to do the problem without them.

## Test cases
```
0.0.0.0
true

255.255.255.255
true

0.0.0
false

123.10.231.0
true

255.256.255.255
false

123.-10.231.0
false

a.b.c.d
false
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md)
[Interview Questions](README.me)
