# Automated Coding Interviews

## Goals
* Automatically evaluate candidates and enforce the same standard while hiring
* Reduce errors and bias from manual interviews
* Speed up the recruiting process by setting an automated initial filter that more easily trims the list of candidates.

## Requirements

* Generate and store randomized inputs and their solutions for each candidate/problem combination to enforce personalized challenges and avoid a single solution.
* Being able to uniquely identify each candidate (ideally through a login section)
* Optionally make challenges private so that they can only be accessed by invitation.
* Keep track of the number/frequency of attempts at solving the problem to implement rate-limiting and reduce the chances of blatant brute forcing.

## Design

TBD

## Example Problem

### Problem Definition

You are given a sequence of transitions for an elevator in the form of a string, like: 
`<>>>>><`
where `<` refers to going 1 floor down and `>` refers to going 1 floor up. You must keep track of the elevator's position and be able to answer questions about it. You must also assume that the elevator starts on the first floor. 

### Input Generation

Simple proof of concept for generating random inputs of 900-1000 (just to give a big enough number) characters.

```
function getRandomChar() { 
  // Slightly prefer '>' to encourage a higher position number so the solution is harder to guess
  if (Math.random() < 0.4) { 
    return '<'; 
  } else { 
    return '>'; 
  } 
};

function getInputSize(min, max) { 
  return Math.floor(Math.random() * (max - min + 1)) + min;
} 

function getRandomInput() {
  var inputSize = getInputSize(900, 1000);
  var msg = "";
  for (var i = 0 ; i < inputSize; i++) { 
    msg += getRandomChar(); 
  }
  return msg;
}
```


### Potential Questions

#### Highest position

Calculate the highest position (as an integer number) that the elevator ever gets to.

#### Final position

Calculate the final position of the elevator (as an integer number) after going through all the movements in the input

#### Time to basement

Calculate the number of movements it takes to get to the basement (i.e. a negative position)

### Other Ideas to Make The Problem Harder

#### Add more characters

Add more characters apart from `<` and `>`, like: 

* `{` and `}` moves 5 floors at a time
* `(` and `)` moves 10 floors at a time
* `[` and `]` goes to the bottom and top floors respectively

### Sample Solutions

This is a set of solutions according to the question being asked; these could also potentially be used to validate the proposed answer.

#### Highest position

```
function highest(input) {
  var max = current = 0;
  for (var j = 0; j < input.length; j++) {
    current += 2 * (input[j] == '>') - 1
    max = Math.max(current, max)    
  }
  return max;
}
```

#### Final position

TBD

#### Time to basement

TBD
