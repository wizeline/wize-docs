[Home](../../../README.md)            |
[Interview Process](../../README.md)  |
[Engineers](../README.MD)             |
[On-site](README.md)

# Markdown Parser

## Overview

Based on the [markdown specification here](https://daringfireball.net/projects/markdown/syntax/) and the [Markdown cheatsheet here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) the candidate has to build an app that converts a markdown input to HTML.

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
- The output has to be HTML whether in a file in case of the console app or on the screen for the web app.

### [2-part onsite](https://github.com/wizeline/wize-docs/blob/master/interview-process/engineers/on-site/README.md#2-part)

- Candidate will get 5 rules to start with. Depending on the rules chosen, we will add more and try to see 2 things: how easy is to add more rules (extending from the ones already written) and add more that are not related.

### [4-hour onsite](https://github.com/wizeline/wize-docs/blob/master/interview-process/engineers/on-site/README.md#4-hour)

- Candidate will get 3 rules to implement. They will be able add more rules if they have time.
- Adding more rules will be considered as BONUS points.

#### Exclusions/Restrictions

- The candidate should build the solution without using a *library* or *regex*.
- Using YACC, LEX, Bison, ANTLR, FLEX or any other PARSER GENERATOR is also discouraged.

#### Deliverables

Use any languages that you like and present it any from you like

##### Desktop app
The desktop app (command-line or GUI) should be able to receive a markdown input and generate a html output

##### Web app
The web app should get an html input in any form and generate a html output. The candidate may choose 2 things here:
- Build a very simple UI to load the markdown input and show the html output
or
- Build an API

## Ideas for New/Changed Requirements

e.g., for adding on during [2-part](README.md#2-part) flows or "Bonus points" during [4-hour](README.md#4-hour) processes.

- **Fix any bugs or deficiencies identified during the presentation**
- Add more rules and assess how easy is to add more rules extending from the existing ones
- Add rules not entirely related to the ones already implemented

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
- Ordered/unordered lists

#### Group 4:
- Tables

[Home](../../../README.md)            |
[Interview Process](../../README.md)  |
[Engineers](../README.MD)             |
[On-site](README.md)
