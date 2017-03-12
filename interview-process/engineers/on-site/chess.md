[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md)
[On-site](README.md)

# Chess

Implement a human _vs_ human Chess game.

- [As 2-Part](#as-2-part)
- [As 4-Hour](#as-4-hour)

**NOTE**: Because we provide "starter code" for this challenge, we must find out in advance what language they which to use. See this [GitHub repository](https://github.com/wizeline/wizeline-on-site/tree/master/chess) to see the languages we have available.

With enough notice, we may be able to prepare a starter package for a new language. If this might be important, **please** ask at least 2 weeks in advance.

## As [2-Part](README.md#2-part)

### Example Instructions

> **Implement a human _vs_ human Chess game**
>
> Based on the code we provide which is a way to draw on a board.
>
> For more information about how to use the code base that we provide, please see the `README` and/or comments in the code.
>
> Your implementation must
>
> - Provide basic game management like setup and turn enforcement
> - Handle "basic rules" and moves for at least four pieces (_e.g._, Pawn, Rook, _etc_): validate the legality of a move and execute it.
> - Indicate a general design / architecture suitable for the remaining pieces.
> - Be in some kind of Source Code Control System you can share with us
>
>  (_e.g._, a repo on Github, Jira, _etc._;, a copy of your local repo; access to an SVN server, _etc._)
>
> Please keep a journal of the time you spend researching, designing, and coding to help us understand your efforts between and around your commits / checkins.
>
> Early in your day with us, you will present your design and initial implementation. Please be prepared to
>
> - Demonstrate your project.
> - Talk about your architecture.
> - Answer questions about your design and implementation.
>
> Near the end of your presentation
>
> - We will present new or changed requirements
> - You will lead a discussion of how to meet them
> 
> 
> Next, you will have some time to make the changes.
>
> Finally, you will demonstrate and present your revised project.

### During the First Presentation

#### Some Things to Look At / Ask About

- Basic functionality &mdash; _e.g._,
  - initial board setup
  - turn enforcement
  - move validation
  - capturing
- Overall design / architecture
  - separation of concerns
  - effective use of language features &mdash; _e.g._, classes / interfaces and inheritance in appropriate languages)

#### Ideas for New/Changed Requirements

- **Fix any bugs or deficiencies identified during the first presentation**
- Implement any remaining pieces
- Implement "advanced" rules
  - _En passant_
  - Pawn promotion to Rook, Knight, Bishop, or Queen
  - Castling (and all of its requirements)
  - When the King is in Check, only moves which interrupt Check are valid
  - Detect Checkmate and end the game
- Given an invalid move for a piece, suggest valid moves
- Play back or export game moves
- Reverse the board display on demand and/or alternating turns (_e.g._, active player on bottom)
- If using an appropriate UI
  - drag-and-drop
  - show valid moves

### During the Second Presentation

- Review fixes / changes 'assigned' during the first presentation
- Review the candidate's work journal
- Ask non-project-related questions &mdash; _e.g._, "soft skills" and "broader" topics
- Ask some version of "What do you want to make sure we know about you?"
- Allow the candidate to ask questions of the interview team

## As [4-Hour](README.md#4-hour)

As mentioned [above](#chess), we must know the candidate's langugage of choice from those [available](https://github.com/wizeline/wizeline-on-site/tree/master/chess).

Given them the "starter package" and make sure they can compile (as appropriate) and run it.

### Some Things to Look At / Ask About During the Presentation

- Functionality &mdash; _e.g._,
  - initial board setup
  - turn enforcement
  - basic move validation
  - capturing
  - "advanced" rules
     - _En passant_
     - Pawn promotion to Rook, Knight, Bishop, or Queen
     - Castling (and all of its requirements)
     - When the King is in Check, only moves which interrupt Check are valid
     - Detect Checkmate and end the game
- Overall design / architecture
  - separation of concerns
  - effective use of language features &mdash; _e.g._, classes / interfaces and inheritance in appropriate languages)
- Non-project-related questions &mdash; _e.g._, "soft skills" and "broader" topics
- Some version of "What do you want to make sure we know about you?"
- Allow the candidate to ask questions of the interview team

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[On-site](README.md)
