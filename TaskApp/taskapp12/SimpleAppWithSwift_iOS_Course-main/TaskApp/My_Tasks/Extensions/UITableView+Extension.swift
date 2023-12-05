//
//  UITableView+Extension.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

typealias UITableViewReference = UITableViewDelegate & UITableViewDataSource

extension UITableView {
    
    func registerCellNib<Cell: UITableViewCell>(_ cellClass: Cell.Type) {
        let id = String(describing: cellClass.self)
        register(UINib(nibName: id, bundle: nil),
                 forCellReuseIdentifier: id)
    }
    
    func dequeue<Cell: UITableViewCell>(_ cellClass: Cell.Type) -> Cell {
        let id = String(describing: cellClass.self)
        guard let cell = dequeueReusableCell(withIdentifier: id) as? Cell else {
            fatalError("Error in cell: \(id)")
        }
        return cell
    }
}
