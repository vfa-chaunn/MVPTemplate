//
//  CellBook.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/19/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import UIKit

class CellBook: UITableViewCell {

    @IBOutlet weak var viewCheck: UIView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(data: BookEntity){
        self.lblName.text = data.title ?? ""
        let isChecked = data.completed ?? false
        viewCheck.backgroundColor = isChecked ? UIColor.blue : UIColor.red
    }
    
    func setupCell(movie: MovieTopRateEntity){
        self.lblName.text = movie.title ?? ""
        let isChecked = movie.adult ?? false
        viewCheck.backgroundColor = movie.adult ?? false ? UIColor.blue : UIColor.red
    }
}
