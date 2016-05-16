# Moving 0s!

Write a function to "move" 0s in an input array to the "beginning" and return the resulting array.

For example, if `a`, `b`, _etc_, represent non-zero integers,

`[a, b,  c, 0, d, 0, b, 0] => [0, 0, 0, b, d, a, c, b]`

_i.e._,
- preserve the non-zero values
- their order does not matter

## Observations
- Do not mention negative values up front &mdash; if the candidate attempts a numeric sort algorithm, see if they realize it won't work
- If the candidate uses a loosely-typed language &mdash; _e.g._, would allow `['dog', 0, -3.14, null]` &mdash; wait and see if/how they handle the non-numeric values
- Note that the description says **return** &mdash; it does not say **print**
- See if the candidate proposes an appropriate function prototype for the language &mdash; _e.g._,
  - JavaScript: `function moveZeros(inputArray)`
  - C: `int *moveZeroes(int *inputArray, int inputLen)`
  - C++ w/ STL: `vector<integer> moveZeroes(vector<integer>)` (or `list<integer>` or ...?)
  - _etc_.
- When complete, you may wish to ask the candidate about big-O complexity
- Copy/move 0 found in original array rather than simply using hard-coded 0. example:
```
// traversing & modifying array in place
// ‘classic’ swap works too hard:
int temp = myArray[indexWithNonZero];
myArray[indexWithNonZero] = myArray[indexWithZero];
myArray[indexWithZero]    = temp;

// When simply
myArray[indexWithZero]    = myArray[indexWithNonZero];
myArray[indexWithNonZero] = 0;

```

## (Representative) Test cases
See how many of these cases the candidate considers on their own (more is better :smile:)

| Input                       | Possible Output
| --------------------------- | ---------------
| `[1, 4,  5, 0, 3, 0, 5, 0]` | `[0, 0, 0, 1, 4, 5, 3, 5]`
| `[2, -12, 0, 7, 0, -99]`    | `[0, 0, 2, -99, 7, -12]`
| `[]`                        | `[]`
| `[0]` (_i.e._, all 0s)      | `[0]`
| `[1]` (_i.e._, all non-0s)  | `[1]`
| `nil` / `null`              | `nil` / `null`? (or, "What do you think it should return?)

## Optional Follow-on Challenge
If the candidate uses a language that allows pass-by-reference (_e.g._, C, C++, _etc_.) and their solution returns a new array, you may wish to ask them to modify the array in-place.
