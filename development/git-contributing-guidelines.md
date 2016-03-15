# Git Contributing Guidelines

In order to contribute to a repository there are a few guidelines we'll need to follow whether is a code update, commit message, branch, issue, pull request or git tactics.

### Table of Contents
- [Branch Naming](#branch-naming)
- [Commit Messages](#commit-messages)
- [Pull Requests](#pull-requests)
- [Git Tactics](#git-tactics)

## Branch Naming
Branches must be created in order to keep code organized and separated from the rest of the code. Following the convention branch-per-feature, the creation of a new branch is necessary whether we're developing and pushing a WIP, feature, bug fix or an experiment.

### Branch Naming Conventions
Git branches must follow the next conventions when working or developing over them.

1. First part must be a Grouping Token
2. Second part must be a Lead Token
3. If available add issue tracker number between Group and Lead tokens
3. Tokens must be separated by slashes
4. Do not use numbers as leading parts
5. Do not use long descriptive Lead Tokens
6. Tokens must match current workflow
7. Use short nouns for Grouping and Lead Tokens

```
<group>/<tracker-number>/<lead>
```

```
group1/XXXX/lead-foo
group1/YYYY/lead-baz
group2/lead-bar
group3/lead-foo
```

#### Grouping Tokens
Grouping Tokens are the ones in front of the branch name. Use one of the next defined tokens to group the branches.

```
feat  Feature I'm adding or expanding
bug   Bug fix, experiment or monkey patch
test  Integration of tests
junk  Throwaway branch for experiments
doc   README and/or documentation only
```

#### Lead Tokens
Lead Tokens are the ones next to the Grouping Tokens in a branch name. This token must match your flow and it's personalized depending of your code addition or subtraction.

```
feat/order-blueprints
bug/sticky-navbar
test/post-model-attributes
junk/login-bug-test
```

#### JIRA Tracker Number
To integrate JIRA tracker number to this branch name structure, we'll need to add it between the Grouping and the Lead Tokens.

```
feat/RSSI-12/order-blueprints
bug/RSEM-10/sticky-navbar
test/RCMY-9/post-model-attributes
junk/RUMS-49/login-bug-test
```

## Commit Messages

**Not this**

![Not this](https://imgs.xkcd.com/comics/git_commit.png)

Commit messages must be understandable for future reference, bug tracking or code history. The ideal commit message will consist of three parts that we'll be reviewing below. First, let's take a look at the following commit model.

```
Capitalized, short (50 chars or less) summary

More detailed explanatory text, if necessary.  Wrap it to about 72
characters or so.  In some contexts, the first line is treated as the
subject of an email and the rest of the text as the body.  The blank
line separating the summary from the body is critical (unless you omit
the body entirely); tools like rebase can get confused if you run the
two together.

Write your commit message in the imperative: "Fix bug" and not "Fixed bug"
or "Fixes bug."  This convention matches up with commit messages generated
by commands like git merge and git revert.

Further paragraphs come after blank lines.

- Bullet points are okay, too

- Typically a hyphen or asterisk is used for the bullet, followed by a
  single space, with blank lines in between, but conventions vary here

- Use a hanging indent
```

We are going to use the following established conventions for writing commit messages.

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line
6. Wrap the body at 72 characters
7. Use the body to explain what and why vs. how

In order to achieve this workflow when writing a commit message, we need to avoid using the `message`flag for git command and use `commit` method alone in order to open up our default text editor.

**Incorrect use**

```
git add file
git commit --message 'My commit message'
```

**Correct use**

```
git add file
git commit
```

We'll need to wrap up our commit message text in 72 columns in order to be shown correctly with `git log` and `less -S`. To achieve this in your text editor, you'll need to find the corresponding configuration. 

For **vim** users, you can set it up with:

```
:set textwidth=72
```

But if you are already using Vim:

- You might like [fugitive](https://github.com/tpope/vim-fugitive) &mdash; it helps you follow those line-length limits (and has _lots_ of [other great features](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/), too)
- If you use fugitive, you might as well get it via [Janus](https://github.com/carlhuda/janus), along with all the goodies it brings.

If you're using **emacs**:

```
$ brew remove emacs
```

And then use vim.

## Pull Requests
Before making a Pull Request, check that the correct base branch is selected, it usually is `development`.
In order to have a more organized, documented and easy to review Pull Requests, we propose the next convention for Pull Request titles and body.

### Title
Title must be clear and up to 75 characters. It should include the main group, as the branch specifies, JIRA tracking number if available and a short description of the PR.

```
<group> - <tracker-number> - Short Description
```

If PR is not completed it should be tagged at the begining of it as WIP.

```
[WIP] <group> - <tracker-number> - Short Description
```

### Body


template and a bookmarklet in order to make this process easier.
The template is written in Markdown format to match the friendly format from Github.

```
#### What does this PR do?
#### Where should the reviewer start?
#### How should this be manually tested?
#### Any background context you want to provide?
#### What are the relevant tickets?
#### Screenshots (if appropriate)
#### Questions
```

To have this template you can use the next tool to generate a bookmarklet: [Github Pull Request Template Generator](https://jsfiddle.net/kinduff/f6yL0rjf/embedded/result/). Whenever you create a new Pull Request, just click the bookmark and the body should be automatically filled with the template above.

Let's review each of the sections.

- **What does this PR do?** A brief explanation synthesizing the feature, bug or fix.
- **Where should the reviewer start?** Explain where the reviewer should start in order to review the whole addition or subtractions.
- **How should this be manually tested?** List of steps to reproduce, corroborate or tests to run. Write this section clear enough so that external users can also follow it and test the fix.
- **Any background context you want to provide?** Any information regarding the PR that the reviewer should know.
- **What are the relevant tickets?** Link to issues, related PR, JIRA issues, ect.
- **Screenshots (if appropriate)** Screenshots of the feature if available.
- **Questions** If available, to another developer or reviewer.

## Merging Pull Requests

To merge a pull request, it should have at least two positive reviews and no pending change or fix requests.

Each project or repo should have

- one 'primary' Merge Master in charge of merging PRs
- and at least 1 'secondary'/'interim' for when the Primary is unavailable

The Merge Master(s) should be identified in the repo's `CONTRIBUTING`.  If a repo has
only a 'primary' and an interim becomes necessary, a project team may decide
that simply 'advertising' the interim via Slack, e-mail, _etc_., will suffice
rather than requiring update(s) (_e.g._, before and after the Primary's
inavailability) to the `CONTRIBUTING`.

It is responsibility of the author to ask for reviews if nobody has taken a look at the PR, but it is also responsibility of the team to be responsive to this requests.

PRs shouldn't last more than 3 days without activity, either have comments and change requests or get merged.


## Git Tactics
To have a more organized commit history and log we suggest to use the following git tactics to pull and manage branches.

### Pull Remote
If we want to pull remote references use `pull` with `rebase` flag. This will ensure a clean main branch log.

```
$ git pull --rebase
```


### Merge a branch
To merge a branch into another one, we recommend to follow the next steps.

```
$ git fetch origin
$ git checkout -b branch_name origin/branch_name
$ git merge master
```
First command is to pull all origin branches from the remote, next will checkout into a new branch and sincronizing it with the remote, and finally we merge the `master` branch into the new branch.

After the branch is reviewed and conflicts are resolved, we continue with the merging process.

```
$ git checkout master
$ git merge --no-ff branch_name
$ git push origin master
```
First we checkout, in this case, to the `master` branch. Next we will do a `merge` with a `non-fast-forward` flag on the desired branch, and finally we push to our remote.

[Development Standards/Practices](README.md)<br/>
[Home](../README.md)
