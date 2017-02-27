[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md)
[On-site](README.md)

# Tiny URL Challenge

## Overview

Produce a "TinyURL" service:

- like [bitly](https://bitly.com/) or [Google url shortener](https://goo.gl/)
- when I enter a URL I get a "short" URL

   _e.g._, `https://wizeservices.com/careers` &rArr; `https://localhost:3000/corto`

- when I browse to a "short" URL, it redirects to the original URL

   _e.g._, `https://localhost:3000/corto` &rArr;  `https://wizeservices.com/careers`

- when I visit some specific URL, I see a list of the short and long URL pairs in the system

## Initial Requirements

- have some some kind of front-end
- select and use appropriate tools, frameworks, _etc_., to implement the server backend

### Notes

- Do not "bias" the candidate's design thoughts by referring to short URL as a "hash"
- Do not mention "collisions;" see if the candidate considers and handles it

### Example Instructions

> Produce a "TinyURL" URL shortener service:
>
> - like [bitly](https://bitly.com) or [goo.gl](https://goo.gl/)
> - when I enter a URL I get a "short" URL
>
>   _e.g._, `https://wizeservices.com/careers` ⇒ `https://localhost:3000/corto`
>
> - when I browse to a "short" URL, it redirects to the original URL
>
>   _e.g._, `https://localhost:3000/corto ⇒ https://wizeservices.com/careers`
>
> - when I visit some specific URL, I see a list of the short and long URL pairs in the system
>
> Work at any pace and any schedule you like between now and then.
> **Please keep a log or journal of your research, thinking/planning, coding, _etc_.**
>
> Your implementation must
>
> - include at least some "minimal" front-end user interface for creating and listing the URLs &mdash; _i.e._, it cannot be an API-only implementation
> - be able to handle at least 1,000,000 unique "short" URLs
> - be in some kind of Source Code Control System you can share with us
>
>  (_e.g._, a repo on Github, Jira, _etc._;, a copy of your local repo; access to an SVN server, _etc._)
>
> Your implementation may not call any external URL-shortening service.
> Beyond that, feel free to use any language, tools, frameworks, online resources, _etc._ to implement your project.
>
> During your presentation, please be prepared to
>
> - demonstrate your project
> - discuss your choices (_e.g._, language, tools, framework, design, _etc._) and trade-offs
> - discuss how it should be able to handle concurrent requests
> - discuss your development timeline
>
> Following your presentation:
>
> - we will present new or changed requirements
> - you will lead a discussion of how to meet them
> - you will have some time to make the changes
>
> Finally, you will demonstrate and present your revised project.
>
> Thanks!

## During the First Presentation

### Some Things to Look At / Ask About

- Basic functionality &mdash; shorten; re-direct; list known
- Shortening the same "long" URL several times produces same "short?" Why/not?
- Browse to some non-existent "short" URL
- "Inception test"
  - shorten some "long" URL
  - if the implementation allows it
     - shorten the resulting "short" URL; repeat as desired
     - browse to the last "short" URL produced
     - ask why/how it works (_e.g._, what the client/browser does _vs_ what the backend does)
 - Any chance of 2 unique "long" URLs generating the same short?
 - Concurrency problems? (_e.g._, 2 requests generate the same "short," both find it is not yet in the data store, then both try to insert it)
- How many short URLs can your scheme produce?
- What happens when all possible "shorts" have been generated and I try to generate another?
- Are the backend routes "RESTful" and explain/justify the answer.

### Ideas for New/Changed Requirements

- **Fix any bugs or deficiencies identified during the first presentation**
- "personalized URL": When I enter a preferred short URL with my long URL, I can use that short URL if it is available

  (if they didn't already handle 'collisions,' this will force the issue!)

- "Cooler" / "prettier" front-end
- user can choose to guarantee a new short URL is generated even if the original 'long' URL is already in the system
- analytics &mdash; _e.g._,
  - when URLs were entered
  - how many times each has been used/visited
  - last (all?) time(s) each was used/visited
  - number of shortened URLs per original domain (_e.g._, `youtube.com`, `facebook.com`, _etc_.)
- user authentication & authorization &mdash; _e.g._, admin (list all URLs) or not (list only mine)


[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[On-site](README.md)
