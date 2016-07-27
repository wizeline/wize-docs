[Home](../../README.md) |
[Interview Process](../README.md) |
[DevOps](README.md)

# Interview Questions

## DevOps


**Desired Skillset**

*Based on recommendations from Ismael Serratos*

- 100% Fullstack
- Knowledge of physical and virtual infrastructure
- Very good practices to ensure scalability and high standard SLA's
- Very good security practices
- Applies TDD or at least he writes tests
- Experienced with distributed systems

### Platform

**When to use S3 and when EC2?**

*Note:* This is a platform specific question and if the candidate has no previous experience with it, it shouldn't be marked as red flag.

EC2 is a virtual machine where you can run any thing you want (Linux, Windows, apps inside that, etc).

S3 is just simple storage for stuff.


**I want to put stuff in S3, how do I do that?**

*Note:* This is a platform specific question and if the candidate has no previous experience with it, it shouldn't be marked as red flag.


**What needs to be considered when choosing regions for instances?**


**Explain what a CDN is and when would you use it**


**Design a Cache system**

**What environments should I create for an application?**

- Development
- Stating
- UAT
- Production


**I want to create development or testing environments to deploy an application, how do I do that?**

I would expect the candidate to describe the process:

- Set up the service provider (Amazon, DigitalOcean, Heroku, etc.)
- Set up the environment (Linux, Windows, whatever)
- Install the necessary tools (gulp, node, ruby, MySQL, etc.)
- Create a script for provisioning the environment based on that (Chef, Vagrant, Docker)
- Create a script for automating deploys to that environment. Important here that the configuration for different environments is scalable or easy to use.

**Write a script in your favorite tool that automates provisioning of an environment**
I would expect a Dockerfile, Vagrantfile, something like that.

**Write a script in your favorite tool that automates a deploy of an app**
I would expect something on capistrano, something like that.

### Network

**What's the difference between a NS, A, MX and CNAME in DNS configurations?**
- NS: Name Server, basically the name of the servers of the domain.
- A: Address, associates host with IP addresses.
- MX: Mail Exchange, mail configuration.
- CNAME: Canonical Name or aliases, basically host aliases.

### Monitoring

**What monitoring/performance tools are you familiar with?**
Would expect tools from 3rd party services like New Relic, Stackify, Ruxit and native tools like monit, upstart and forever.

The candidate should be aware of the difference between native monitoring, retry cycles, persistance of processes, etc.

### Security

[Home](../../README.md) |
[Interview Process](../README.md) |
[DevOps](README.md)