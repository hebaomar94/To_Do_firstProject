//
//  CreatAccountViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 06/11/2023.
//

import UIKit

class CreatAccountViewController: UIViewController {
    @IBOutlet weak var nameTextField: AppTextField!
    
    @IBOutlet weak var userNameTextField: AppTextField!
    @IBOutlet weak var passwordTextField: AppTextField!
    
    //to make standard //single tun
    //static let standard = CreatAccountViewController()
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Creat Account"

    }
    
    @IBAction func actionCreatAccount(_ sender: Any) {
        let name = nameTextField.text ?? ""
        let username = userNameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        guard !name.isEmpty, !username.isEmpty, !password.isEmpty else {
            return
        }
      //save data
        saveData(name: name, username: username, password: password)
        goToHome()
    }
    
    func saveData(name: String, username: String, password: String) {
        //standard we use it replace obj ()
        //key which i save it in userdefault
        UserDefaults.standard.set(true, forKey: "IS_USER_LOGIN")

        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(password, forKey: "password")


        
    }
    
    func goToHome () {
        let vc = HomeViewController()
        let nav = UINavigationController(rootViewController: vc)
        RootRouter.presentRootScreen(with: nav)
    }
  
    
    
    
    
    
    
    
//    let vc = addTaskViewController(myTask: .init(
//        id:"Task #233",
//        title:"Daily Gym Reminder" ,
//        date: "16Oct 2023",
//        time: "8:00 am",
//        tag: .init(title: "workout", color: .green))
//   
//    )
//    present(vc, animated: true)
//          //presentHome()
//      }

}
