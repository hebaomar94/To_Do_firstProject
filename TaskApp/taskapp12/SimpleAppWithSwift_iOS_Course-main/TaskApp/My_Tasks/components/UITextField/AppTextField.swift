//
//  AppTextField.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 06/11/2023.
//

import UIKit

class AppTextField: UITextField {
    
    private let padding = UIEdgeInsets(top: 0, left: 26, bottom: 0, right: 26)
    //coding
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    //design
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    override  func awakeFromNib() {
        super.awakeFromNib()
    }
    //customChanges
    
    private func setupUI() {
        backgroundColor = .white
        //to make it always round
        isRounded = true
        layer.borderWidth = 1
        layer.borderColor = UIColor(name: .border)?.cgColor
        borderStyle = .none
    }
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    
}
