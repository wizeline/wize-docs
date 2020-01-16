[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[On-site](../README.md)

# "Broken Singly Linked List" Debugging Challenge

## Overview

> Debug a broken implementation of a singly linked list and fix the failing unit tests.

**NOTE**: Because the candidate is supposed to fix existing code for this challenge, we must find out in advance what language they wish to use. See this [GitHub repository](https://github.com/wizeline/wizeline-on-site/tree/master/debugging/linked-list) to see the languages we have available.

With enough notice, we may be able to prepare a starter package for a new language. If this might be important, **please** ask at least 2 weeks in advance.

## Initial Requirements

> Passing as many failing test cases as possible is one goal, but equally important is for the candidate to explain how they arrived at a solution.

Even if the candidate runs out of time and can't implement a fix, listening to their diagnosis of the problem is very important, as many times that's really the hardest part of debugging.

### Notes
- You may present the challenge to the candidate as if it were a problem of yours that you need to solve, and you're relying on their _expertise_ to help you.

- The candidate can solve this on their computer, but you may also give them a printed version of the code. I find that looking at a printed listing of code sometimes helps to see the problem more clearly and gives the chance to scribble ideas and drawings that are not possible in front of the computer. At any rate, offer the candidate a piece of paper and pen or pencil to sketch ideas; you may also offer them to use the whiteboard.

- Give the candidate the opportunity to try and figure out the code by themselves, but do ask them after a while what they've been able to diagnose so far if they seem stuck (i.e. help them by forcing them to articulate their ideas -- see [rubber duck debugging](https://en.wikipedia.org/wiki/Rubber_duck_debugging))

### Example Instructions

> **Fix a broken implementation of a singly linked list**

> Right before your interview starts, you will receive a zipped file with the code in the language of your preference.
>
> Depending on which language you chose, we expect that you will come prepared with the following tools pre-installed on your machine:
>
> - **Python**: The Python interpreter (either version 2 or 3 is fine). Optionally, you may want to install a virtual environment to keep everything self-contained.
>
> - **Java**: `gradle` to take care of building the code and running the tests.
>
> For some languages, we'll also provide a `setup.sh` script to take care of downloading dependencies and/or setting up anything that's needed for the challenge.
>
> We'll also provide you with a `run-tests.sh` script that you can use to test your changes. If you're more comfortable using your IDE or any other tool, feel free to use that. We'll assume that you know what you're doing and don't need our scripts.

### Evaluation Criteria: Things to Look At / Ask About

- Were they able to diagnose the root cause of the problem for each broken test case?
- Were they able to fix each broken test case?
- How long did it take the candidate to complete each fix?
- What is the quality of each fix?
  - Is it an ugly patch or a clean fix?
  - Is it minimal?
  - Is it at the right place in the code?
- If they fixed it and created a PR, what's its quality?
  - Did they give context and a clear explanation of the root cause analysis?
  - Did they write one or more regression tests?
  - Did they at least specify a way to test it manually?

[Home](../../../../README.md) |
[Interview Process](../../../README.md) |
[Engineers](../../README.md) |
[On-site](../README.md)
