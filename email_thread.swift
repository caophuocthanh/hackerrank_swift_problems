import UIKit


func getEmailThreads(emails: [String]) -> [[Int]] {
    
    var new_emails: [(String, String, String)] = []
    var result: [[Int]] = []
    
    for email in emails {
        var components = email.components(separatedBy: ",")
        let from = components[0]
        let to = components[1]
        components.removeFirst()
        components.removeFirst()
        let message = components.joined(separator: ",")
        
        if !message.contains("---") {
            new_emails.append((from, to, message))
            result.append([new_emails.count, 1])
        } else {
            let message_components = message.components(separatedBy: "---")
            let reply = message_components.last!
            
            for (i , new_email) in new_emails.enumerated() {
                if new_email.0 == to && new_email.1 == from && new_email.2 == reply {
                    result.append([i + 1, message_components.count])
                }
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
