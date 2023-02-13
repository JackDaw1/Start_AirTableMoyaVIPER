import Foundation

class OrderAPI {
    
    private init() {}
    public static let shared = OrderAPI()
    
    public private(set) var orders: [OrderItem] = [
        
        OrderItem(summary: "How to use AirTable and how to set Moya", deadline: OrderAPI.createTestDate(value: "2023-01-08"), name: "Moya and AirTable in iOS-app", customer: "proglib"),
        
        OrderItem(summary: "Creating", deadline: OrderAPI.createTestDate(value: "2023-01-08"), name: "VIPER in iOS", customer: "proglib"),
        
        OrderItem(summary: "https://proglib.io/", deadline: OrderAPI.createTestDate(value: "2023-01-09"), name: "MVVM in iOS", customer: "medium"),
        
        OrderItem(summary: "https://proglib.io/", deadline: OrderAPI.createTestDate(value: "2023-01-12"), name: "How to make good apps", customer: "medium"),
        
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
