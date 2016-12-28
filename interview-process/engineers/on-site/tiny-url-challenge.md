[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md)
[On-site](README.md)

# Tiny URL Challenge

Please...
- **use** this as a guide for presenting the challenge to the candidate
- do **not** simply give this document as-is to the candidate

## Overview

Produce a "TinyURL" service:

- like [bitly](https://bitly.com/) or [Google url shortener](https://goo.gl/)
- when I enter a URL I get a "short" URL<br/>
   _e.g._, `https://wizeservices.com/careers` &rArr; `https://localhost:3000/corto`

- when I browse to a "short" URL, it redirects to the original URL<br/>
   _e.g._, `https://localhost:3000/corto` &rArr;  `https://wizeservices.com/careers`

- when I visit some specific URL, I see a list of the short and long URL pairs in the system

## Must

- have some some kind of front-end
- select and use appropriate tools, frameworks, _etc_., to implement the server backend
- talk through the system design before beginning (in part to make sure they understand the problem!)

## "Nice to Have" / "Bonus Points"

- "personalized URL": When I enter a preferred short URL with my long URL, I can use that short URL if it is available
- "Cool" / "pretty" front-end
- Deploy &mdash; _e.g._,
  - to Heroku, Digital Ocean, or similar
  - or perhaps simply some deployment script
- user authorization / authentication
- analytics &mdash; _e.g._,
  - when URLs were entered
  - how many times each has been used/visited
  - last (all?) time(s) each was used/visited
  - _etc_.
- Source Control Control System &mdash; _e.g._ Git, SVN, _etc_.; "we'd love to see your commit messages"
- Be creative &mdash; _e.g._, "try to surprise us!" :smile:

## Encourage the Candidate...

- to use any tools, languages, frameworks, databases, _etc_., they like
- to use any Internet / WWW resources they feel they need
- to ask **any** team members for help as needed
- **not** to lose too much time on any given problem before asking for help

## Notes/ Hints

- Give the wifi key to the candidate!
- Do not "bias" the candidate's design thoughts by referring to short URL as a "hash"
- Wait and see if the candidate mentions and considers collisions
  - **hopefully** they will think of it and mention it on their own
  - if not...
    - give "small" hint(s) &mdash; _e.g._, ask "what if..." questions
    - give "bigger" hints only if/as needed
    - **hopefully** more "senior" candidates will need fewer hints than more "junior" candidates
- check on the candidate every 45 minutes or so
  - _e.g._,
    - "how is it going?"
    - "what do you have working?"
    - "do you need anything?"
  - does it seem like they'll finish "something?"
  - are they stuck on something and, perhaps, afraid(?) to ask for help?
  - how do they handle interruptions, unsolicited interactions, _etc_?
- make sure they know how much time is left; offer additional time if it might help<br/>
  _e.g._, if _almost done_ with a last feature or detail, delay lunch by 15-30 minutes
- offer the candidate snacks, water, coffee, _etc._

## Presentation Questions / Challenges

Here are some questions/challenges that have come up during candidate presentations.

Please feel free to use, change, and/or add to them...

- Why did you choose this framework / library / whatever?
- What features of this framework / library / whatever are most important to you?
- How many short URLs can your scheme produce?<br/>
  What happens when they have all been generated and I try to generate another?

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[On-site](README.md)
