import UIKit

class RegisterPresenter: RegisterPresenterProtocol {

    weak private var view: RegisterViewProtocol?
    private let router: RegisterWireframeProtocol

    init(interface: RegisterViewProtocol, router: RegisterWireframeProtocol) {
        self.view = interface
        self.router = router
    }

}
