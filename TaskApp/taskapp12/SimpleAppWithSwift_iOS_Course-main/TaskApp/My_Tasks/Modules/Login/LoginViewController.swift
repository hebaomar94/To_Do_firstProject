//
//  LoginViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 06/11/2023.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: AppTextField!
    @IBOutlet weak var passwordTextField: AppTextField!
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Login"


    }

    @IBAction func actionLogin(_ sender: Any) {
        let defaults = UserDefaults.standard
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        guard !username.isEmpty, !password.isEmpty else {
            return
        }
        let savedUsername = defaults.string(forKey: "username") ?? ""
        let savedPassword = defaults.string(forKey: "password") ?? ""
        
        if username != savedUsername {
            print("wrong username")
            return
        }
        if password != savedPassword{
            print("wrong password")
            return
        }
        UserDefaults.standard.setValue(false, forKey: "IS_USER_LOGIN")
        goToHome()

    }
    func goToHome() {
        let vc = HomeViewController()
        let nav = UINavigationController(rootViewController: vc)
        RootRouter.presentRootScreen(with: nav)
    }
}
