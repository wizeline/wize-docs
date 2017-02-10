
[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# SMS Messages

There are two clients, A & B [(You can share this image)](https://drive.google.com/file/d/0B_a-BE7ZT6k4RUo2VUFUaXBnaHM/view?usp=sharing)
and we want to share a file between them. File content is not relevant. 

- Client A has two methods: send & send_sms.

TASK: Implement send & receive

## Problem considerations

- Client B has two methods: receive & receive_sms.
- `send_sms` & `receive_sms` are already provided by an API.
- Messages must contain no more than 160 characters.
- Messages must only contain ASCII printable characters.
- Bonus: Send as few messages as possible.

## Observations

The use of base64 encoding is the best solution. Also, candidate needs to consider how to control the communication between
the two clients. To make easier this problem, we can consider that all the messages sent by A will be received by B, and
messages reach B in order, but candidate should ask for/consider this.

[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
