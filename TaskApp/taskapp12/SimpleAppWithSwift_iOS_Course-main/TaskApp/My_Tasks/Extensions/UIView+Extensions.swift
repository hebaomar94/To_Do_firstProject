//
//  UIView+Extensions.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 04/11/2023.
//

//how to set design through coding



import UIKit

extension UIView {
    
    //set corner radius through competed variable
    @IBInspectable
    var setCornerRadius: CGFloat {
        //value will appear
        get {
            //return value
            self.layer.cornerRadius
        }
        //what i will set
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
    //border design costum
    
    @IBInspectable
        var borderWidth: CGFloat {
            get {
                self.layer.borderWidth
            }
            set {
                self.layer.borderWidth = newValue
            }
        }
        
        @IBInspectable
        var borderColor: UIColor? {
            get {
                UIColor(cgColor: self.layer.borderColor ?? UIColor.clear.cgColor)
            }
            set {
                self.layer.borderColor = newValue?.cgColor
            }
        }
    
    
    
    //isrounded design costum
    
    @IBInspectable
    var isRounded: Bool {
        //value will appear
        get {
            //return value
            self.bounds.height == self.layer.cornerRadius*2
        }
        //what i will set
        set {
            self.layer.cornerRadius = self.bounds.height/2
          
        }
    }
    
    
    
    
    //how to set design through coding

    //we can use it in code but we cant use it from design
    func cornerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func setShadow(color: UIColor,
                   opacity: Float = 0.1,
                   offset: CGSize) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
    }
    
    
    
    
    
    //discardableResult thats means i dont want return
    @discardableResult
    func loadFromNib <T: UIView> () -> T? {
        let name = "\(type(of: self))"
        //creat content view
        guard let contentView = Bundle(for: type(of: self)).loadNibNamed(name, owner: self)?.first as? T
                else
        {
            return nil
        }
        addSubview(contentView)
        //add constrains
        //this func must be in false
        contentView.translatesAutoresizingMaskIntoConstraints =
        false
        contentView.fillView(to: self)
        return contentView
    }
    //func creat view and give it from all sides zero
    func fillView (to parentView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        parentView.topAnchor.constraint(equalTo: topAnchor, 
                                        constant: 0).isActive = true
        
        parentView.leadingAnchor.constraint(equalTo: leadingAnchor,
                                        constant: 0).isActive = true
        
        
        parentView.trailingAnchor.constraint(equalTo: trailingAnchor,
                                        constant: 0).isActive = true
        
        
        parentView.bottomAnchor.constraint(equalTo: bottomAnchor,
                                        constant: 0).isActive = true
        
    }
}
