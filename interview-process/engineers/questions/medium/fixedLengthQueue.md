# Fixed length Queue

Write a fixed n-length Queue. This structure keeps the last n elements in insertion order, when new elements comes, oldest elements are discarded.
For example, with a Queue of length 3 after:
```javascript
q = new FixedQueue(3);
q.push(a) // stores a
q.push(b) // stores b
q.push(c) // stores c, the queue is full
q.push(d) // d replaces a

print(q.getContents())
>> [b, c, d]
```

## Interviewer Statement
```
// Write a fixed n-length Queue. This structure keeps the last n elements in insertion order, when new elements comes, oldest elements are discarded.
// For example, with a Queue of length 3 after:
//
// push(a) 
// push(b)
// push(c)
// push(d)
// 
// the contents in order is [b, c, d]
```

## Problem observations
* Check if the candidate creates a FixedQueue class. Is not required, but, is a better approach.
* Check if is possible to easily print the contents in insertion order. Some candidates store the data in the wrong order, making it harder.
* Check if the structure can be resized. Is not required but reflects a better design.
* The data type of the queue can be anything, but, let see how generic can be made.

## Test cases
* When the queue is empty
* When the queue is not empty and not full,
* When the queue is full