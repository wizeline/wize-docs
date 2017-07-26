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
// "0.1.2.3"         => true
// "255.255.255.255" => true
// "256.256.256.256" => false
// "0.0.0"           => false
// "1.2.3.4.5"       => false

```

### HackerRank
This problem is also
[available](https://www.hackerrank.com/x/library/personal/mine/coding/questions/288822/view)
in the HackerRank library for use in
[Tests](https://www.hackerrank.com/x/tests) and
[CodePair](https://www.hackerrank.com/x/interviews/mypads)
interviews.

HackerRank has their own
[version](https://www.hackerrank.com/x/library/hackerrank/coding/questions/141294/view)
involving both IPv4 and IPv6 addresses.

## Problem considerations
An IP version 4 is formed by 4 parts: A.B.C.D and each part must have a value between 0-255.

## Observations
- This is an easy problem and if it's not done by 15 minutes you may dismiss the candidate or put another problem.
- If they resolve this in more than 15 min you *MUST* add another problem (if there's still time)
- Plus points if they do not use REGEX
- The point is to validate simple code instructions if the candidate uses regex ask him to do the problem without them.
- PHP has [`filter_var()`](https://php.net/manual/en/function.filter-var.php). With [`FILTER_FLAG_IPV4`](https://php.net/manual/en/filter.filters.validate.php), it handles lots of edge cases. If a candidate uses this, reward their resourcefulness, but ask them to discover and handle the edge cases in their own code.

## Test Cases

```
"0.0.0.0"         => true
"0.1.2.3"         => true
"255.255.255.255" => true
"256.256.256.256" => false  # 256 is not valid
"0.0.0"           => false  # too few  parts
"1.2.3.4.5"       => false  # too many parts
""                => false  # HackerRank converts to nil/null/Nothing for some languages
"1.2.3.a"         => false  # non-numeric part
"123.-10.231.0"   => false  # negative part
"22.22.25a.30"    => false  # non-numeric at end of a part ("25a)
"10.20.30.."      => false  # empty final   part
"...255"          => false  # empty leading parts
"12,34,56,78"     => false  # incorrect separator
"1.2.999.3.4"     => false  # too many parts & 1 too large; correct number of valid parts
"1.2.3.4."        => false  # trailing separator -- some languages' split() ignores it
"5.6.7.8. "       => false  # trailing separator and space
"1.2.3.4,5"       => false  # non-numeric within a part ("4,5")
"1.2.3.4:5"       => false  # non-numeric within a part ("4:5") -- don't look for specific non-numeric characters
"1.2.a.3.4"       => false  # too many parts & 1 with non-numeric; correct number of valid parts
"10.20.30.40-"    => false  # part with trailing integer-legal character ("-")
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
