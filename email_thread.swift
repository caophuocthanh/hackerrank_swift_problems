import UIKit

/**
 Email Thread
 
 Problem:
 
 A company needs to create mechanism to group emails into threads. They know that grouping by the subject line is umreliable. They want to compare body text instead. The sender and receiver in a thread must also reverse. The emails com in as single string each. The sender is before the first comma and the receiver is from there to the second comma. The message body is what remains after the second comma. The current message is followed by quoted messages, in reverse chronological order and lelimited with "---". Implement a solotion to group emails in to threads. It should return a 2-dimensional array with the thread number of each email and its position in the thread, as integers. Thread numbers start at 1.

 Example:
 
 n = 3
 emails = [ "alex@gmail.com,sam@gmail.com,Are you back from vaction?", "chris@gmail.com,robin@gmail.com,did you get the key?", "sam@gmail.com,alex@gmail.com,Just got in.---Are you back from vaction?" ]
 There are 2 threads in the emails. In this case, the output should be [(1,1),(2,1),(1,2)]. This signifies that the first email is in thread 1 and its position in that thread is 1. The third email is in the thread 1, position 2.

 Function Desciption:
 
 Complete the function func getEmailThreads(emails: [String]) -> [[Int]].
 The function must return a 2D array.
 getEmailThreads has the following paramester(s): emails string[]: an array of strings
 
 Constraints:
 
 1 <= n <= 700
 The maximum length of a mail won't exceed 200.
 The email body will contain only lowercase English letters, blank space, commas, period and question mark with "---" as a delimiter.
 The sender's and reciver's email addresses will contain only lowercase English letters, at the rate (@) sign, and peried.
 */

func getEmailThreads(emails: [String]) -> [[Int]] {
    
    var new_emails: [(String, String, String)] = []
    var result: [[Int]] = []
    
    for email in emails {
        
        var components = email.components(separatedBy: ",")
        
        // get sender and receiver
        let sender = components[0]
        let receiver = components[1]
        
        // remove sender and reciver from components
        components.removeFirst()
        components.removeFirst()
        
        // get message
        let message = components.joined(separator: ",")
        
        // case string is not a reply
        if !message.contains("---") {
            new_emails.append((sender, receiver, message))
            result.append([new_emails.count, 1])
            continue
        }
        
        // case string is a reply
        let message_components = message.components(separatedBy: "---")
        let reply_message = message_components.last! // A reply message always at last message_components flited by "---"
        
        for (i , new_email) in new_emails.enumerated() {
            if new_email.0 == receiver && new_email.1 == sender && new_email.2 == reply_message {
                result.append([i + 1, message_components.count])
                break
            }
        }
    }
    return result
}

let result = getEmailThreads(emails: ["abc@gmail.com,x@gmail.com,hello guy",
                                      "c@asdas.com,abc@gmail.com,askfjlasfj",
                                      "x@gmail.com,abc@gmail.com,howareasdasd---ádhaskdjhags---ádasdasd---hello guy",
                                      "x@gmail.com,abc@gmail.com,howareasdasd---hello guy",
                                      "x@gmail.com,abc@gmail.com,howareasdasd---hello guy"
])
print(result)
