[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# Reverse parenthesis

Write a method that for a given input string, reverse all the characters inside parentheses. Consider nested parentheses.

## Inteviewer Statement
```
// Write a method that for a given input string, reverse all the characters inside parentheses. Consider nested parentheses.
```

## Observations
- How to solve it? Either recursion or using a stack.

## Possible Solutions
```python
def reverse_text_inside_parens(text):
    pending_outputs = []
    output_so_far = ''

    for i in range(len(text)):
        if text[i] == '(':
            pending_outputs.append(output_so_far)
            output_so_far = ''

        elif text[i] == ')':
            if len(pending_outputs) == 0:
                raise ValueError('Malformed expression')

            previous_output = pending_outputs.pop()
            output_so_far = previous_output + output_so_far[::-1]
        else:
            output_so_far += text[i]

    if len(pending_outputs) > 0:
        raise ValueError('Malformed expression')

    return output_so_far
```

## Test cases
```javascript
'' => ''
'()' => ''
'(())(((())))' => ''
'(bar)' => 'rab'
'((bar))' => 'bar'
'wi(ez)(((il)))(en)' => 'wizeline'
'foobarbaz' => 'foobarbaz'
'foo(bar)baz' => 'foorabbaz'
'foo(bar(baz))blim' => 'foo(barzab)blim' => 'foobazrabblim'
```

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
