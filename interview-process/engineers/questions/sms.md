
[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)

# SMS Messages

There are two clients, A and B [(You can share this image)](https://drive.google.com/file/d/0B_a-BE7ZT6k4RUo2VUFUaXBnaHM/view?usp=sharing) and we want to share a file between them. File content is not relevant. 

- Client A has two methods: `send` and `send_sms`.
- Client B has two methods: `receive` and `receive_sms`.

Your task is to implement `send` and `receive` functions. Those functions should look like: 

```C++
void send(char[] buffer) {
  // Use send_sms();
}

char* receive() {
  // Use receive_sms();
}

```

## Problem considerations

- `send_sms` and `receive_sms` are already provided by an external API.
- Messages must contain no more than 160 characters.
- Messages must only contain ASCII printable characters.
- Bonus: Send as few messages as possible.

## Observations

1. The use of base64 encoding is the best solution, using this approach you can guarantee valid values (32 <= c < 128).
2. Candidate needs to consider how to control the communication between the two clients, like: 
  - Send in advance the number of messages/length of the whole file to be sent.
  - Send an End Of Transmission control character. If candidate use base64, values will be between 32 and 95, so, you can use values between 96 and 127 to send information.
3. To simplify this problem, candidate can consider that all the messages sent by A will be received by B, and messages reach B in order, but candidate should ask for this. _E.g._ If candidate suggest from the very beggining to send the number of messages in the first message, ask him in which scenarios that approach could fail (messages not delivered in order).



[Home](../../../README.md) |
[Interview Process](../../README.md) |
[Engineers](../README.md) |
[Interview Questions](README.md)
