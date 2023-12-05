//
//  TaskTableViewCell.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 04/11/2023.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
  
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var tagView: UIView!
    @IBOutlet private weak var tagLabel: UILabel!
    
    
    func configuer(with model: MyTask){
        titleLabel.text = model.title
        dateLabel.text = model.date
        tagView.backgroundColor = UIColor(named: model.tag.color)?.withAlphaComponent(0.08)
        tagLabel.text = model.tag.title
        tagLabel.textColor = UIColor(named: model.tag.color)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        containerView.cornerRadius(20)
        containerView.setShadow(color: .init(hex: 0x323B47),
                                opacity: 0.08,
                                offset: .init(width: 1, height: 3))
        tagView.cornerRadius(12)
        
        //let tagColor = UIColor(hex: 0x606AE9)
        //tagView.backgroundColor = tagColor.withAlphaComponent(0.2)
        //tagLabel.textColor = tagColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
