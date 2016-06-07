# Comments App Challenge

This is a *guide* for presenting the challenge to the candidate, *not* a document to give to the candidate.

## Overview

The purpose of this challenge is to create a Comments app connected to a RESTful API.

Example: [Hacker News](https://news.ycombinator.com/item?id=11846108)

## Requirements

These are the minimum app requirements:
 
- Create a comment based on a text and a username.
- Reply to a comment based on a text and a username.
- Generate a unique identifier for each comment (permalink).
- Show a single comment.
- Retrieve comments from single user.
- Delete all comments from a single user.
- Delete single comment from the list.
- Search comments across the database.
- Access to a RESTful API.

**Note:** Authentication is not required nor encouraged.

## Bonus Points

- Add profile image for user, retrieved as an url or using any other method.
- Flag a comment to hide it.
- Use git and have a GitHub repository.
- Have a live version of the application (deploy).

# Design Discussion

- Discuss the appropriate tools, frameworks, _etc_., to implement the server backend. 
- Talk through the system design:
    - Database design for deleted and nested comments.
    - Nested comments view.
    - Permalinks generation.

## Presentation Questions

### General

- Why did you choose this framework/library?
- What features of this framework/library are most important to you?

### Challenge Specific

- How do you handle in the DB a deleted comment? How you display a deleted comment?
- How you generated the permalink of each comment?
