//
//  ViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var creatAccountButton: UIButton!
    
    
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadus()
    }
    private func cornerRadus() {
        creatAccountButton .layer.cornerRadius = 25
    }
    
    
    @IBAction func action(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            //let vc = HomeViewController()
            //let vc = addTaskViewController()
            let vc = CreatAccountViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = LoginViewController()
            navigationController?.pushViewController(vc, animated: true   
            )
        default :
            break
        }
        
        //    private func presentHome() {
        //        let vc =   HomeViewController()
        //        RootRouter.presentRootScreen(with: vc)
        
        
        //let vc = addTaskViewController() //change this to your class name
        //present(vc, animated: true, completion: nil)
        
    }
    //}
}
