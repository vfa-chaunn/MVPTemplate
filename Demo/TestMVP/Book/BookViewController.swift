//
//  BookViewController.swift
//  TestMVP
//
//  Created VFA-ChauNN on 12/19/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//
//  Template generated by NguyenNgocChau@VFA
//

import UIKit

class BookViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: BookPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CellBook", bundle: nil), forCellReuseIdentifier: "CellBook")
        tableView.dataSource = self
        self.presenter?.getListMovie()
    }

}

extension BookViewController : BookViewProtocol {
    func didGetListMovie() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension BookViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter?.movies?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellBook", for: indexPath) as? CellBook, let dataCell = self.presenter?.movies?[indexPath.row] {
            cell.setupCell(movie: dataCell)
            return cell
        }
        return UITableViewCell()
    }
}
