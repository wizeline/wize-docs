[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[Interview Questions](../../interview-questions.md)

# Polish Notation

Polish Notation is a way of expressing arithmetic expressions that avoids the use of brackets to define priorities for evaluation of operators.

(3 + 5) * (7 - 2)  =>  * + 3 5 - 7 2

## Interviewer Statement
```
// Write an algorithm to solve an arithmetic expression given in polish notation
// and return the result.
```

## Problem considerations

In order to focus interviewee's effort in the main problem the input will be provided as a list not as a string (this allow us to use numbers with more than one digit).
Operators allowed: + - * /


## Observations
- Users should quickly notice the need of a stack or a list, if they don’t consider this a red flag.
- You may want to give him a hint about using data structures if you don’t see any improvement.
- Bonus if asks what to do when the input comes in a bad format.



## Test cases
```

// (3 + 5) * (7 - 2) = 40
//  * + 3 5 - 7 2 = 40
['*', '+', '3', '5', '-', '7', '2']
40

// ((15 ÷ (7 − (1 + 1))) × 3) − (2 + (1 + 1)) = 5
// − × ÷ 15 − 7 + 1 1 3 + 2 + 1 1 = 5
['-', '*', '/', '15', '-', '7', '+', '1', '1', '3', '+', '2', '+', '1', '1'])
5

```

## Solutions

For tracking the order of the elements while the input is processed use a stack.
An operation must be executed using the last operator pushed in the stack (if the input was read from left to right) every two numbers.
Push the result in the stack.
Repeat until the input is over.
A stack with just one element is expected.
Pop the element and return it.



### Python
```python

def solve(polish_notation):
  elements = []
  operations = {
    '+': lambda x, y: x + y,
    '-': lambda x, y: x - y,
    '*': lambda x, y: x * y,
    '/': lambda x, y: x / y
  }

  for element in polish_notation:
    if element.isdigit():
      elements.append(int(element))
      while len(elements) > 1 and elements[-2] not in operations:
        second = elements.pop()
        first = elements.pop()
        operator = elements.pop()
        elements.append(operations[operator](first, second))
      continue
    elements.append(element)
  return elements.pop()

```


[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[Interview Questions](../../interview-questions.md)
g
