# Hacker Rank Swift Problems

## 1. Email Thread

### Problem:
A company needs to create mechanism to group emails into threads. They know that grouping by the subject line is umreliable. They want to compare body text instead. The sender and receiver in a thread must also reverse. The emails com in as single string each. The sender is before the first comma and the receiver is from there to the second comma. The message body is what remains after the second comma. The current message is followed by quoted messages, in reverse chronological order and lelimited with "---".
Implement a solotion to group emails in to threads. It should return a 2-dimensional array with the thread number of each email and its position in the thread, as integers. Thread numbers start at 1.

### Example:
- n = 3 <br>
- emails = [
            "alex@gmail.com,sam@gmail.com,Are you back from vaction?",
            "chris@gmail.com,robin@gmail.com,did you get the key?",
            "sam@gmail.com,alex@gmail.com,Just got in.---Are you back from vaction?"
         ]

- There are 2 threads in the emails. In this case, the output should be [(1,1),(2,1),(1,2)]. This signifies that the first email is in thread 1 and its position in that thread is 1. The third email is in the thread 1, position 2.

### Function Desciption:
- Complete the function <b>func getEmailThreads(emails: [String]) -> [[Int]]</b>.
- The function must return a 2D array.
- getEmailThreads has the following paramester(s):
emails string[]: an array of strings

### Constraints:
- 1 <= n <= 700
- The maximum length of a mail won't exceed 200.
- The email body will contain only lowercase English letters, blank space, commas, period and question mark with "---" as a delimiter.
- The sender's and reciver's email addresses will contain only lowercase English letters, at the rate (@) sign, and peried.

## 2. Sort The Summary

### Problem
Given an array of integers, create a 2-dimensional array where the first element is a diction value from the array and the second element is that value's frequency within the array. Sort the resulting array desending by frequency, the should be sorted ascending.

### Example
- arr = [3,3,1,2,1]
- There are two values, 3 and 1, each with a frequency of 2, and on value 2 with a frequency of 1: [[3,2],[1,2],[2,1]]
- Sort the 2-dimensional array descending by frequency: [[3,2],[1,2],[2,1]]
- Sort the 2-dimensional array ascending by value for values with matching frequencies: [[1,2,[3,2],[2,1]]]

### Function Desciption
- Complete the function <b>func groupSort(arr: [Int]) -> [[Int]]</b>
- groupSort has the fowlowing paramester(s):
- int arr[n]: an array of intergers

## 3. Oranges Rotting

### Problem
Given a grid as input, each item is one of the below things.
- 0: empty item
- 1: white item
- 2: black item
Every 2 seconds, white items that are adjacent (up, down, left, right) to black item become black.
Please return minimum seconds until there is no white item. If it is not possible, return -1.

### Example 1.
- INPUT: [[1,1,1], [1,1,0], [0,2,1]]
- OUTPUT: 6

### Example 2.
- INPUT: [[1,0,1], [0,1,1], [1,1,2]]
- OUTPUT: -1

### Constraints:
- Input grid is 3 x 3.
- Try to optimize time and space complexity.
- Function signature is as below. But you can modify it according to language you are
familiar with.

## 4.Single Number

### Problem
Given an integer array, all items repeat 5 times except for just one item that appears once. Please
find this single item.

### Example 1.
- INPUT: [1, 1, 0, 1, 1, 1]
- OUTPUT: 0

### Example 2.
- INPUT: [3, 1, 3, 1, 1, 3, 3, 5, 1, 3, 1]
- OUTPUT: 5

### Constraints
- Input array is always non empty.
- Try to optimize time and space complexity.
- Function signature is as below. But you can modify it according to language you are
familiar with.
