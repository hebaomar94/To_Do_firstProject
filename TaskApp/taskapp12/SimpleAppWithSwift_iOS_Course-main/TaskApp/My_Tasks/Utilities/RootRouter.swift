//
//  RootRouter.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 06/11/2023.
//

import UIKit

class RootRouter {
    static func presentRootScreen (with root: UIViewController){
        //Git window
        //filter data in widows
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        //make window visiable und push in it view controller
        window?.makeKeyAndVisible()
        window?.rootViewController = root
    }
}
