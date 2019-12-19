//
//  UIView+extension.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/19/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
extension UIView {
    
    @IBInspectable
    var cornerRadius : CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
