//
//  UICollectionView+Etensions.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

typealias UICollectionViewReference = UICollectionViewDelegate & UICollectionViewDataSource

extension UICollectionView {
    
    func registerCellNib<Cell: UICollectionViewCell>(_ cellClass: Cell.Type) {
        let id = String(describing: cellClass.self)
        register(UINib(nibName: id, bundle: nil),
                 forCellWithReuseIdentifier: id)
    }
    
    func dequeue<Cell: UICollectionViewCell>(_ cellClass: Cell.Type, indexPath: IndexPath) -> Cell {
        let id = String(describing: cellClass.self)
        guard let cell = dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as? Cell else {
            fatalError("Error in cell: \(id)")
        }
        return cell
    }
}
