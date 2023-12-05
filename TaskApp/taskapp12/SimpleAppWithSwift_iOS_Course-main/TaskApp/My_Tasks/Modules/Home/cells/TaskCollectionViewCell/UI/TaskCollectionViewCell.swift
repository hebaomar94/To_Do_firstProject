//
//  TaskCollectionViewCell.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

class TaskCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet private weak var idLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var tagView: TagView!
 
    
    func configuer(with model: MyTask){
        idLabel.text = model.id
        titleLabel.text = model.title
        dateLabel.text = model.date
        //timeLabel.text = model.time
        tagView.setupUI(title: model.tag.title, color: UIColor(named: model.tag.color) ?? .black)
//        tagView.backgroundColor = model.tag.color.withAlphaComponent(0.08)
//        tagLabel.text = model.tag.title
//        tagLabel.textColor = model.tag.color
//        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        containerView.cornerRadius(20)
        containerView.setShadow(
            color: .init(hex: 0x323B47),
            opacity: 0.08,
            offset: .init(width: 1, height: 3))
       
    }

}
