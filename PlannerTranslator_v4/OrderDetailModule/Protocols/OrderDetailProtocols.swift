
import UIKit

protocol OrderDetailViewProtocol: AnyObject {
    
    var presenter: OrderDetailPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showOrder(_ order: OrderItem)
}

protocol OrderDetailPresenterProtocol: AnyObject {
    
    var view: OrderDetailViewProtocol? { get set }
    var interactor: OrderDetailInteractorInputProtocol? { get set }
    var router: OrderDetailRouterProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
    func editOrder(name: String, price: Int?, deadline: Date?, customer: String, paid: Bool?, comment:String?)
    func deleteOrder()
}

protocol OrderDetailInteractorInputProtocol: AnyObject {
    
    var presenter: OrderDetailInteractorOutputProtocol? { get set }
    var orderItem: OrderItem? { get set }
    
    // PRESENTER -> INTERACTOR
    func deleteOrder()
    func editOrder(name: String, price: Int?, deadline: Date?, customer: String, paid: Bool?, comment:String?)
}

protocol OrderDetailInteractorOutputProtocol: AnyObject {
    
    // INTERACTOR -> PRESENTER
    func didDeleteOrder()
    func didEditOrder(_ order: OrderItem) 
}

protocol OrderDetailRouterProtocol: AnyObject {
    
    static func createOrderDetailRouterModule(with order: OrderItem) -> UIViewController
    
    // PRESENTER -> ROUTER
    func navigateBackToListViewController(from view: OrderDetailViewProtocol)
    
}
