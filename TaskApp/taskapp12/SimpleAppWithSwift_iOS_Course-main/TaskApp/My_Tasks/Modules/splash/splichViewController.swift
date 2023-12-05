//
//  splichViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 21/10/2023.
//

import UIKit

class splichViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1 ) {
            //Checked if login
            let isUserlogin = UserDefaults.standard.bool(forKey: "IS_USER_LOGIN")
            if isUserlogin{
                self.goToHome()
            } else{
                self.presentInView()
            }
            
            self.presentInView ()
        }
    }

    
    //navigate to viewcontroller
           //navigate as root
    private func presentInView () {
        let vc = ViewController()

        let nav = UINavigationController(rootViewController: vc)
        RootRouter.presentRootScreen(with : nav)

}
    func goToHome () {
        let vc = HomeViewController()
        let nav = UINavigationController(rootViewController: vc)
        RootRouter.presentRootScreen(with: nav)
    }
  

    }




