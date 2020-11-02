import UIKit

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
