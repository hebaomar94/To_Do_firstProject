//
//  HomeViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 04/11/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    //array contain date
    var myTasksTableViewList = [MyTask]()
    var myTasksCollectionViewList = [MyTask]()

    
    init() {
        super.init(nibName: String(describing: Self.self), 
                   bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "My Tasks"
        setupTableView ()

        refreshDate()
        //today task appear in collection view but anothor task appear in table view
        /*
       let date =  CoreDataManager().fetchMyTasks() ?? []
        //tableofview
        //check if this date is today or not
        //here not today
        //orderedDescending (trteeb tnazly)
        myTasksTableViewList = date.filter{!$0.isToday}
            .sorted(by: {$0.formattedDate.compare($1.formattedDate) == .orderedAscending})
        //collectionview
            //today task
        myTasksCollectionViewList = date.filter{$0.isToday}
            .sorted(by: {$1.formattedDate.compare($0.formattedDate) == .orderedDescending})

        
        
        
      
         */
    }
    
    
    @IBAction func addAction(_ sender: Any) {
        presentTask()
    }
    func presentTask(_ myTask: MyTask? = nil){
        let vc = addTaskViewController(myTask: myTask, delegate:self)
        present(vc, animated: true)
    }
}


extension HomeViewController: TaskViewDelegate {
    func refreshDate() {
        let date =  CoreDataManager().fetchMyTasks() ?? []
         myTasksTableViewList = 
        date.filter{!$0.isToday}
        .sorted(by: {$0.formattedDate
        .compare($1.formattedDate) == .orderedAscending})
         //collectionview
             //today task
         myTasksCollectionViewList = date.filter{$0.isToday}
             .sorted(by: {$1.formattedDate.compare($0.formattedDate) == .orderedDescending})

         
         
         
       
        tabelView.reloadData()
     }
     
    }
    
    
