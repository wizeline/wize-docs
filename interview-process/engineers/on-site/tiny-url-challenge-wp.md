[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md)
[On-site](README.md)

# Tiny URL Challenge for Wordpress Engineers [⬆️](tiny-url-challenge.md)

This file is an addendum to the [Tiny URL Challenge](tiny-url-challenge.md) that addresses special considerations to have for Wordpress Engineers.

All the criteria in the challenge apply except for those parts that appear ~crossed out~ in this document.

## Prior to the interview

- Ask the candidate to have his/her own PHP development environment ready.
- Be sure to mention the need for a MySql database.

## Overview [⬆️](tiny-url-challenge.md#overview)

- Implement the tiny url generator as an API.
- Install a vanilla wordpress on their development environment.
- Create a plugin that interacts with the API to add the tiny-url of the post to the posts list.
- ~when I visit some specific URL, I see a list of the short and long URL pairs in the system~


## Must [⬆️](tiny-url-challenge.md#must)

- ~have some some kind of front-end~

## "Nice to Have" / "Bonus Points" [⬆️](tiny-url-challenge.md#nice-to-have--bonus-points)

- ~"Cool" / "pretty" front-end~
- "Cool" / "pretty" front-end inside of wordpress.

## Presentation Questions / Challenges [⬆️](tiny-url-challenge.md#presentation-questions--challenges)

 - Is the candidate querying the service on each page load or cacheing the url somewhere. If the former, ask about speed considerations; if the latter, ask about cache invalidation.