# Hacker Rank Swift Problems

## 1. Email Thread

### Problem:
A company needs to create mechanism to group emails into threads. They know that grouing by the subject line is umreliable. They want to compare body text instead. The sender and receiver in a thread must also reverse. The emails com in as single string each. The sender is before the first comma and the receiver is from there to the second comma. The message body is what remains after the second comma. The current message is followed by quoted messages, in reverse chronological order and lelimited with "---".
Implement a solotion to group emails in to threads. It should return a 2-dimensional array with the thread number of each email and its position in the thread, as integers. Thread numbers start at 1.

### Example:
n = 3
emails = [
            "alex@gmail.com,sam@gmail.com,Are you back from vaction?",
            "chris@gmail.com,robin@gmail.com,did you get the key?",
            "sam@gmail.com,alex@gmail.com,Just got in.---Are you back from vaction?"
         ]

There are 2 threads in the emails. In this case, the output should be [(1,1),(2,1),(1,2)].
This signifies that the first email is in thread 1 and its position in that thread is 1.
The third email is in the thread 1, position 2.

### Function Desciption:
Complete the function <b>func getEmailThreads(emails: [String]) -> [[Int]]</b>.
The function must return a 2D array.
getEmailThreads has the following paramester(s):
emails string[]: an array of strings

### Constraints:
1 <= n <= 700
The maximum length of a mail won't exceed 200.
The email body will contain only lowercase English letters, blank space, commas, period and question mark with "---" as a delimiter.
The sender's and reciver's email addresses will contain only lowercase English letters, at the rate (@) sign, and peried.

## 2. Sort The Summary
