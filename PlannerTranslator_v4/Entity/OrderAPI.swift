import Foundation

class OrderAPI {
    
    private init() {}
    public static let shared = OrderAPI()
    
    public private(set) var orders: [OrderItem] = [
//        name: String, price: Int?, deadline: Date?, customer: String, paid: Bool?, comment:String?
        OrderItem(name: "Moya and AirTable in iOS-app", price: 300, deadline: OrderAPI.createTestDate(value: "2023-01-08"), customer: "proglib", paid: true, comment: "111"),
        
        OrderItem(name: "VIPER in iOS", price: 200, deadline: OrderAPI.createTestDate(value: "2023-01-08"),  customer: "proglib", paid: true, comment: "111"),
        
        OrderItem(  name: "MVVM in iOS", price: 123, deadline: OrderAPI.createTestDate(value: "2023-01-09"), customer: "medium", paid: true, comment: "111"),
        
        OrderItem(name: "How to make good apps", price: 32, deadline: OrderAPI.createTestDate(value: "2023-01-12"),  customer: "medium", paid: true, comment: "111"),
        
    ]
    
    func addOrder(_ order: OrderItem) {
        orders.append(order)
    }
    
    func removeOrder(_ order: OrderItem) {
        if let index = orders.firstIndex(where: { $0 === order }) {
            orders.remove(at: index)
        }
    }
    
    static func createTestDate(value: String) -> Date? {
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

        //let string = "1996-12-19T16:39:57-08:00"
        return RFC3339DateFormatter.date(from: value)
    }
}
