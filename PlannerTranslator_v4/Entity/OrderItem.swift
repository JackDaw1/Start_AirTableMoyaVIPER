import Foundation

class OrderItem {
    var name: String
    var price: Int?
    var deadline: Date?
    var customer: String?
    var paid: Bool?
    var comment: String?
    
    init(name: String,
        price: Int?,
        deadline: Date?,
        customer: String?,
        paid: Bool?,
        comment:String?) {
        
        self.name = name
        self.price = price
        self.deadline = deadline
        self.customer = customer
        self.paid = paid
        self.comment = comment
    }
}
