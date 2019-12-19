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
        self.presenter?.getListBook()
    }

}

extension BookViewController : BookViewProtocol {
    func didGetListBook() {
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
        return self.presenter?.books?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellBook", for: indexPath) as? CellBook, let dataCell = self.presenter?.books?[indexPath.row] {
            cell.setupCell(data: dataCell)
            return cell
        }
        return UITableViewCell()
    }
}
