//
//  Home+TableView.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
   func setupTableView () {
       tabelView.registerCellNib(HorizentalCell.self)
        tabelView.registerCellNib(TaskTableViewCell.self)
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTasksTableViewList.count + 1

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // need deqeue cell at first row and reload cell
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeue(HorizentalCell.self)
            //closure
            /*
            cell.configure(with: myTasksCollectionViewList){
                ///trailing closure
                //when user selected anyitem this func will calling 
            item in
                self.presentTask(item)
                
            }
             |*/
            //delegate
            cell.configure(with: myTasksCollectionViewList, delegate: self)
            return cell
        default:
            let cell = tableView.dequeue(TaskTableViewCell.self)
            cell.configuer(with: myTasksTableViewList[indexPath.row - 1 ])
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            let model = myTasksTableViewList[indexPath.row - 1 ]
            presentTask(model)
            
            
        }
            
            
            
        
    }
}
//refrence for view controller
extension HomeViewController: HorizentalCellDelegate{
 
    
    func didSelectTask(_ myTask: MyTask) {
        presentTask(myTask)

    }
    func didLogoutClicked() {
        //remove data
        //UserDefaults.standard.removeObject(forKey: <#T##String#>)
        UserDefaults.standard.set(false, forKey: "IS_USER_LOGIN")
//        UserDefaults.standard.set(nil, forKey: "username")
//        UserDefaults.standard.set(nil, forKey: "password")


        //delet user data
        
        let vc = ViewController()
        RootRouter.presentRootScreen(with: vc)
        
    }
}
