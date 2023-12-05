//
//  TagSelectionCell.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 09/11/2023.
//

import UIKit

class TagSelectionCell: UICollectionViewCell {
    @IBOutlet weak var tagView: TagView!
    
    func configure(with model: MyTaskTag) {
        tagView.setupUI(title: model.title,
                        color: UIColor(named: model.color) ?? .black,
                        isSelected: model.isSelected)
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tagView.containerView.cornerRadius(17.5)
    }

}
