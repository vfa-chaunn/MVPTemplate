//
//  LoginPresenter.swift
//  TestMVP
//
//  Created VFA-ChauNN on 12/19/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//
//  Template generated by NguyenNgocChau@VFA
//

import UIKit

class LoginPresenter: LoginPresenterProtocol {

    weak private var view: LoginViewProtocol?
    private let router: LoginWireframeProtocol

    init(interface: LoginViewProtocol, router: LoginWireframeProtocol) {
        self.view = interface
        self.router = router
    }

    func checkValidate(email: String, password: String) {
        if email.isEmpty {
            self.view?.didCheckValidate(error: "Email is not empty")
            return
        }
        if password.isEmpty {
            self.view?.didCheckValidate(error: "Password is not empty")
            return
        }
        self.view?.didCheckValidate()
    }
    
    func gotoBook() {
        self.router.gotoBook()
    }
}
