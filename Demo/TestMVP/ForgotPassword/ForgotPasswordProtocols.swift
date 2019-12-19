import Foundation

//MARK: Wireframe -
protocol ForgotPasswordWireframeProtocol: class {

}
//MARK: Presenter -
protocol ForgotPasswordPresenterProtocol: class {

}

//MARK: View -
protocol ForgotPasswordViewProtocol: class {

  var presenter: ForgotPasswordPresenterProtocol?  { get set }
}
