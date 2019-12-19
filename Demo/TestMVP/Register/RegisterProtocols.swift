import Foundation

//MARK: Wireframe -
protocol RegisterWireframeProtocol: class {

}
//MARK: Presenter -
protocol RegisterPresenterProtocol: class {

}

//MARK: View -
protocol RegisterViewProtocol: class {

  var presenter: RegisterPresenterProtocol?  { get set }
}
