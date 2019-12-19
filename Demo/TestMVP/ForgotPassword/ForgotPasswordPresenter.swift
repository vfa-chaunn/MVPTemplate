import UIKit

class ForgotPasswordPresenter: ForgotPasswordPresenterProtocol {

    weak private var view: ForgotPasswordViewProtocol?
    private let router: ForgotPasswordWireframeProtocol

    init(interface: ForgotPasswordViewProtocol, router: ForgotPasswordWireframeProtocol) {
        self.view = interface
        self.router = router
    }

}
