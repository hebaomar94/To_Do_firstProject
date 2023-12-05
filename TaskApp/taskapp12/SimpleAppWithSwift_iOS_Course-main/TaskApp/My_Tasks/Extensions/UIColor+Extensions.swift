//
//  UIColor+Extensions.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 04/11/2023.
//

import UIKit

extension UIColor {
    //set color name (which found in colorAssets
    enum Appcolor: String {
       case border = "Border"
        case primary = "primaryColor"
        case secondary = "secondary"
        case tertairy = "tertairy"
        case Accent = "Accent"
        
    }
    
    //replace we write name: AppColor
    //we can make static
    static let border = UIColor(name: .border)
    static let primary = UIColor(name: .primary)

    //how use enum
    //creat init
    convenience init?(name: Appcolor){
        self.init(named: name.rawValue)
    }
    
    
    convenience init(r red: Int, g green: Int, b blue: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: a)
    }
    
    convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(r: (hex >> 16) & 0xFF, g: (hex >> 8) & 0xFF, b: hex & 0xFF, a: a)
    }
}
