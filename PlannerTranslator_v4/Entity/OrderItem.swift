import Foundation

class OrderItem {
    var price: Int?
    var deadline: Date?
    var name: String
    var customer: String?
    
    init(price: Int?,
        deadline: Date?,
        name: String,
        customer:String?) {
        
        self.price = price
        self.deadline = deadline
        self.name = name
        self.customer = customer
        
    }
}
