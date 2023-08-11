import Foundation

class OrderDetailPresenter: OrderDetailPresenterProtocol {

    weak var view: OrderDetailViewProtocol?
    var router: OrderDetailRouterProtocol?
    var interactor: OrderDetailInteractorInputProtocol?
    
    func viewDidLoad() {
        if let orderItem = interactor?.orderItem {
            view?.showOrder(orderItem)
        }
    }
    
    func editOrder(price: Int?, deadline: Date?, name: String, customer:String?) {
        
        interactor?.editOrder(price: price, deadline: deadline, name: name, customer: customer)
    }
    
    func deleteOrder() {
        interactor?.deleteOrder()
    }
    
}

extension OrderDetailPresenter: OrderDetailInteractorOutputProtocol {
    
    func didDeleteOrder() {
        if let view = view {
            router?.navigateBackToListViewController(from: view)
        }
    }
    
    func didEditOrder(_ order: OrderItem) {
        view?.showOrder(order)
    }
    
}
