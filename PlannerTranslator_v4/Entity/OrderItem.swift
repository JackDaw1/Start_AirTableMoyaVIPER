import Foundation

class OrderItem {
    var summary: String?
    var deadline: Date?
    var name: String
    var customer: String?
    
    init(summary: String?,
        deadline: Date?,
        name: String,
        customer:String?) {
        
        self.summary = summary
        self.deadline = deadline
        self.name = name
        self.customer = customer
        
    }
}
