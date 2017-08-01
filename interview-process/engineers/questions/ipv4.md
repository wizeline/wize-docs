[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Validate an IP version 4

## Interviewer Statement
An IP version 4 address has 4 parts separated by dots/periods: "A.B.C.D"
each part (A, B, C, and D) is a decimal value

- 0-255 inclusive
- reject 0-padded values&mdash;e.g., `012`

The function receives a string to evaluate;
complete the function to

- return true  if it is a valid IP version 4 address
- return false if not

e.g.,

| string              | validity  | return
| ------------------- | :------:  | :----:
| `"0.1.2.3"`         | valid     | True
| `"252.253.254.255"` | valid     | True
| `"0.255.1.256"`     | not valid | False
| `"000.001.002.003"` | not valid | False

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


## Observations
- Regular expressions can be a good tool for specific parts of the problem (e.g., capturing each octet), but discourage them for validating the legal numeric ranges
  - Even the most RegEx experienced engineers will struggle to get it right
  - Allowing a candidate to find a regex via web search won't provide much information relevant to evaluating the candidate
  - If the candidate insists on devising their own, require them to explain it
- PHP has [`filter_var()`](https://php.net/manual/en/function.filter-var.php). With [`FILTER_FLAG_IPV4`](https://php.net/manual/en/filter.filters.validate.php), it handles lots of edge cases. If a candidate uses this, reward their resourcefulness, but ask them to discover and handle the edge cases in their own code.

## Test Cases

```
 0. "0.1.2.3"         => true
 1. "252.253.254.255" => true
 2. "0.255.1.256"     => false  # 256 is not valid
 3. "000.001.010.100" => false  # 3 0-padded values
 4. "0.0.0"           => false  # too few  parts
 5. "1.2.3.4.5"       => false  # too many parts
 6. ""                => false  # HackerRank converts to nil/null/None for some languages
 7. "1.2.3.a"         => false  # non-numeric part
 8. "123.-10.231.0"   => false  # negative part
 9. "22.22.25a.30"    => false  # non-numeric at end of a part ("25a)
10. "10.20.30.."      => false  # empty final   part
11. "...255"          => false  # empty leading parts
12. "12,34,56,78"     => false  # incorrect separator
13. "1.2.999.3.4"     => false  # too many parts & 1 too large; correct number of valid parts
14. "1.2.3.4."        => false  # trailing separator -- some languages' split() ignores it
15. "5.6.7.8. "       => false  # trailing separator and space
16. "1.2.3.4,5"       => false  # non-numeric within a part ("4,5")
17. "1.2.3.4:5"       => false  # non-numeric within a part ("4:5") -- don't look for specific non-numeric characters
18. "1.2.a.3.4"       => false  # correct number of valid parts, but 1 invalid
19. "10.20.30.40-"    => false  # part with trailing integer-legal character ("-")
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
