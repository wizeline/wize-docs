[Home](../README.md) |
[Development Standards/Practices](README.md)

# Git Contributing Guidelines

Follow these guidelines to contribute to a repository,  whether is a code update, commit message, branch, issue, pull request, or git tactics.

### Table of Contents
- [Branching Model](#branching-model)
- [Commit Messages](#commit-messages)
- [Pull Requests](#pull-requests)
- [Git Tactics](#git-tactics)

## Branching Model

Branches keep the code organized. Following the convention _branch-per-feature_, create a new branch whether you are developing and pushing a WIP, feature, bug fix, or an experiment.

### Branch Naming Conventions

Git branches must follow the next conventions when working or developing over them.

1. Start the branch name with a [_Grouping Token_](#grouping-tokens)
2. Add the [_Issue Tracker Number_](#issue-tracker-number) after the Grouping Token, if available
3. End the branch name with [_Description Tokens_](#description-tokens)
4. Separate branch parts by slashes (`/`)
5. Don't use numbers to start your branch name
6. Use short nouns for Grouping and Description Tokens

```
<grouping-token>/<tracker-number>/<description-tokens>
```

Examples: 

```
group1/XXXX/lead-foo
group1/YYYY/lead-baz
group2/lead-bar
group3/lead-foo
```

#### Grouping Tokens

Grouping Tokens are the ones in front of the branch name. Use one of the next defined tokens to group the branches.

* `feat`  - Feature, I'm adding or expanding
* `bug` - Bug fix, experiment, or monkey patch
* `test` - Integration of tests
* `doc` - README or documentation only updates
* `chore` - tasks that have no production code change
* `junk` - Throwaway branch for experiments

#### Issue Tracker Number

Issue Tracker Number is the one after the Grouping Token, if exists. It is the issue number assigned to the feature or bug in the project's issue tracking tool.

Examples:

```
feat/RSSI-12/order-blueprints
bug/RSEM-10/sticky-navbar
test/RCMY-9/post-model-attributes
junk/RUMS-49/login-bug-test
```

#### Description Tokens

Description Tokens are the ones at the end of the branch name. These tokens must match your flow and are personalized depending of your code addition or subtraction.

Examples:

```
feat/order-blueprints
bug/sticky-navbar
test/post-model-attributes
junk/login-bug-test
```

## Commit Messages

**Avoid this**

![Not this](https://imgs.xkcd.com/comics/git_commit.png)

Commit messages must be understandable for future reference, bug tracking, or code history. The ideal commit message consists of two parts, reviewed below. First, let's take a look at the following commit model.

```
Capitalized, short (50 chars or less) summary

More detailed explanatory text, if necessary.  Wrap it to about 72
characters or so.  In some contexts, the first line is treated as the
subject of an email and the rest of the text as the body.  The blank
line separating the summary from the body is critical, unless you omit
the body entirely; tools like rebase can get confused if you run the
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

Use the following established conventions for writing commit messages.

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Start the subject line with a capital letter
4. Don't end the subject line with a period
5. Use the imperative mood in the subject line
6. Wrap the body at 72 characters
7. Use the body to explain what and why vs. how

To achieve this workflow when writing a commit message, avoid using the `message` flag for the `git` command and use the `commit` method alone to open up your default text editor.

**Incorrect use**

```bash
git add file
git commit --message 'My commit message'
```

**Correct use**

```bash
git add file
git commit
```

Configure your text editor to wrap the commit message text in 72 columns so it shows correctly with `git log` and `less -S`. 

For **Vim** users, set it up with:

```vim
:set textwidth=72
```

<!-- TODO: Move the following to an "Editors" section -->

But if you are already using Vim:

- You might like [fugitive](https://github.com/tpope/vim-fugitive) &mdash; it helps you follow those line-length limits (and has _lots_ of [other great features](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/), too)
- If you use fugitive, you might as well get it via [Janus](https://github.com/carlhuda/janus), along with all the goodies it brings.

For more information about commit messages, read [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/).

## Pull Requests

Before making a Pull Request, check that the correct base branch is selected, it usually is `development`.
To have a more organized, documented, and easy to review Pull Requests, follow the next convention for Pull Request titles and description.

### Title

Title must be clear and up to 75 characters. It should include the [Grouping Token](#grouping-token), as the branch specifies, the [Issue Tracking Number](#issue-tracking-number), if available, and a short description of the PR.

```
<grouping-token> - <tracker-number> - <Short description>
```

If a PR is not completed, add the tag `[WIP]` at the beginning of its title.

```
[WIP] <grouping-token> - <tracker-number> - <Short description>
```

### Description

The PR description template is written in Markdown to match the format from GitHub.

```markdown
<!-- PR title format: `<Feat|Bug|Test|Doc|Chore|Junk> - <tracker-number> - <Short description>` -->
<!-- Fill out this PR template to make it easier for reviewers to understand your code. Remove this comment and any unnecessary section. -->

#### What does this PR do?

<!-- Briefly synthesize the feature, fix, or chore -->

#### Where should the reviewer start?

<!-- Point out where the reviewer should start to review the code additions or subtractions. -->

#### How should this be manually tested?

<!-- List the steps to reproduce, corroborate, or tests to run. Write this section clear enough so that external developers can also follow it and test the feature or fix. -->

#### Any background context you want to provide?

<!-- Add any information regarding the PR that the reviewers should know, if necessary. -->

#### What are the relevant tickets?

<!-- Link to issues, related PRs, JIRA issues, etc. -->

#### Screenshots

<!-- Add before and after screenshots or recording of the feature, if available. -->

#### Questions

<!-- List questions or concerns directed to the reviewers, if necessary. -->

#### Checklist

<!-- Verify that you have done all of the following and mark them as done. -->

- [ ] I added the necessary documentation, if appropriate.
- [ ] I added tests to prove that my fix is effective or my feature works.
- [ ] I reviewed existing Pull Requests before submitting mine.
```

To automatically fill any new Pull Request with this template, [add this template to your repository](https://help.github.com/articles/creating-a-pull-request-template-for-your-repository/).

## Merging Pull Requests

To merge a Pull Request, it should have at least _two_ positive reviews and no pending change or fix requests.

It is responsibility of the PR author to ask for reviews if nobody has taken a look at the PR, but it is also responsibility of the team to be responsive to these requests.

PRs shouldn't last more than 3 days without activity, either have comments and change requests or get merged.

Each project or repository should have:

- One _Primary_ Merge Master in charge of merging PRs
- At least one _Interim_ Merge Master for when the Primary is unavailable

The Merge Masters should be identified in the repository's `CONTRIBUTING`.  If a repository has
only a Primary and a Interim becomes necessary, a project's team may decide
that simply _advertising_ the Interim via Slack, e-mail, _etc_., will suffice
rather than updating the `CONTRIBUTING` file.

## Git Tactics

To have a more organized commit history and log use the following git tactics to pull and manage branches.

### Pull Remote

To ensure a clean main branch log, pull remote references using the `rebase` flag.

```bash
$ git pull --rebase
```

### Merge a Branch

To merge a branch into a base branch, follow the next steps.

1. Pull all `origin` branches from the remote.
```bash
git fetch origin
```
2. Checkout into a new branch and sincronize it with the remote.
```bash
git checkout -b <branch_name> origin/<branch_name>
```
3. Merge the base branch into the new branch.
```bash
git merge <base_branch>
```
4. Solve any conflict.
5. Checkout the base branch.
```bash
git checkout <base_branch>
```
6. Merge the desired branch with the `non-fast-forward` flag.
```bash
git merge --no-ff <branch_name>
```
7. Push to the remote.
```bash
git push origin <base_branch>
```

[Home](../README.md) |
[Development Standards/Practices](README.md)
