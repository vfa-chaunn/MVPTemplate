//
//  CircleViewController.swift
//  TestMVP
//
//  Created VFA-ChauNN on 12/18/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//
//  Template generated by NguyenNgocChau@VFA
//

import UIKit

class CircleViewController: UIViewController, CircleViewProtocol {

	var presenter: CirclePresenterProtocol?
    
    var circleView: UIView!

	override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        // Add circle view
        circleView = UIView(frame: CGRect(origin: view.center, size: CGSize(width: 100.0, height: 100.0)))
        circleView.layer.cornerRadius = circleView.frame.width / 2.0
        circleView.center = view.center
        circleView.backgroundColor = .green
        view.addSubview(circleView)
        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panCircle))
        circleView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func panCircle(_ recognizer: UIPanGestureRecognizer){
        let location = recognizer.location(in: self.view)
        UIView.animate(withDuration: 0.1) {
            self.circleView.center = location
        }
    }
}
