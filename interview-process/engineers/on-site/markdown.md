[Home](../../../README.md)            |
[Interview Process](../../README.md)  |
[Engineers](../README.MD)             |
[On-site](README.md)

# Markdown Parser

## Overview

Based on the Markdown specification [here](https://daringfireball.net/projects/markdown/syntax/) or [here](http://spec.commonmark.org/0.27/) and the [Markdown cheatsheet here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) the candidate has to build an app that transforms a markdown input to HTML.

## Initial Requirements

- Support a **subset** of the next rules:
  - Headers
  - Line breaks
  - Links
  - Emphasis
  - Code block
  - Inline code
  - Blockquotes
  - Ordered/unordered lists
  - Images
  - Tables
  - Horizontal Rule
- Expected output:
  - HTML as text for desktop/command line applications
  - Browser preview for web applications

### [2-part onsite](https://github.com/wizeline/wize-docs/blob/master/interview-process/engineers/on-site/README.md#2-part)

- Candidate will get 5 rules to start with. Depending on the rules chosen, we will add more and try to see 2 things: how easy it is to add more rules (extending from the ones already written) and add more that are not related.
- The 5 rules will be chosen based on the [Relation between rules](#relation-between-rules) & following the next guidelines:
  - 3 rules from Group 1
  - 1 rule from Group 2 
  - 1 rule from Group 3 or 4

### [4-hour onsite](https://github.com/wizeline/wize-docs/blob/master/interview-process/engineers/on-site/README.md#4-hour)

- Candidate will get 3 rules to implement. They will be able to add more rules if they have time.
- The 3 rules will be chosen based on the [Relation between rules](#relation-between-rules) & following the next guidelines:
  - 2 rules from Group 1
  - 1 rule from Group 2 or 3
- If the candidate adds more rules, those will be considered BONUS points.

#### Exclusions/Restrictions

- The candidate should build the solution without using a *library* or *regex*.
- Using YACC, LEX, Bison, ANTLR, FLEX or any other PARSER GENERATOR is also discouraged.

#### Deliverables

To the candidate: is encouraged to use any programming language you feel comfortable with and present it in any way you like.

*IMPORTANT:*Since we are trying to mature this process, the proposal is to go with the desktop app since the UI or API may take more time.

##### Desktop app
The desktop app (command-line or GUI) should be able to receive a markdown input and generate an html output in any form (file or in the console).

##### ~Web app~
~The web app should get an html input in any form and generate an html output. The candidate may choose 2 things here:~
- ~Build a very simple UI to load the markdown input and show the html output~
~or~
- ~Build an API~

## Ideas for New/Changed Requirements

e.g., for adding on during [2-part](README.md#2-part) flows or "Bonus points" during [4-hour](README.md#4-hour) processes.

- **Fix any bugs or deficiencies identified during the presentation**
- Add more rules and assess how easy it is to add more rules extending from the existing ones
- Add rules not entirely related to the ones already implemented. See [Relation between rules](#relation-between-rules)

## Relation between rules

#### Group 1: Starts with 1 or more characters. Sometimes it ends with the same or nothing. Whatever is inside or after the character is the actual text.
- Headers starting with a hash
- Headers with the underline syntax
- Blockquotes
- Line breaks
- Horizontal Rule
- Emphasis
- Code block
- Inline code

#### Group 2: This is mostly a group that uses most of the logic in group 1. This is composed by a merged of 2 group-1 rules
- Links
- Images

#### Group 3:
Ordered/unordered lists

#### Group 4:
Tables

[Home](../../../README.md)            |
[Interview Process](../../README.md)  |
[Engineers](../README.MD)             |
[On-site](README.md)
