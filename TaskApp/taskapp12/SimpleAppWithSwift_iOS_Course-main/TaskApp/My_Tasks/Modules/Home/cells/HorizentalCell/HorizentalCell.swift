//
//  HorizentalCell.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 26/11/2023.
//

import UIKit
//we use protocol we can put into func without  any body just initailazation
protocol HorizentalCellDelegate {
    // we put func connection between horizental cell & homeviewcontroller
    // func knowing me that task I selected it
    func didSelectTask(_ myTask: MyTask)
    func didLogoutClicked ()
}

class HorizentalCell: UITableViewCell {
    
    @IBOutlet weak var welcomLabel: UILabel!
    @IBOutlet weak var todaysTaskLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    private var list = [MyTask]()
    //here we make it optional (?) to we can be able to make a call without initaliazation
    private var didSelectedItem: ((MyTask) -> Void)?
    private var delegate: HorizentalCellDelegate?
    
    
    
    
    func configure(with list: [MyTask],
                   //send func
        delegate: HorizentalCellDelegate?) {
        self.delegate = delegate
        self.list = list
        let name = UserDefaults.standard.string(forKey: "name") ?? ""
        welcomLabel.text = "Hello, \(name)"
        
        
        if list.isEmpty {
            todaysTaskLabel.isHidden = true
            collectionView.isHidden = true
        }else {
            todaysTaskLabel.isHidden = false
            collectionView.isHidden = false
            
            //to update data
            collectionView.reloadData()
        }
        
        //refresh to your code
        UserDefaults.standard.synchronize()
    }
    //here we 1-makeSetup / appear collectionView /Make reload for it
    
    //we will write func configure present data of collectionview
    func configure(with list: [MyTask],
                   //send func
       didSelectedItem: ((MyTask) -> Void)?) {
       self.didSelectedItem = didSelectedItem
        self.list = list
        //to update data
        collectionView.reloadData()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }
    
    //    override func setSelected(_ selected: Bool, animated: Bool) {
    //        super.setSelected(selected, animated: animated)
    //
    //        // Configure the view for the selected state
    //    }
    //
    
    @IBAction func actionLogout(_ sender: Any) {
        delegate?.didLogoutClicked()
        
    }
    
}
    extension HorizentalCell: UICollectionViewReference,
                              UICollectionViewDelegateFlowLayout{
        
        func  setupCollectionView () {
            collectionView.registerCellNib(TaskCollectionViewCell.self)
            let padding = 16.5
            collectionView.contentInset = .init(top: 0, left: padding, bottom: 0, right: padding)
            collectionView.delegate = self
            collectionView.dataSource = self
            
            
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return list.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeue( TaskCollectionViewCell.self, indexPath: indexPath)
            cell.configuer(with: list[indexPath.item])
            return cell
        }
        //resize
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let screenWidth = UIScreen.main.bounds.width
            let cellWidth = screenWidth * 0.8
            return.init(width: cellWidth, height: 153)
        }
        
        //reback item which we selected
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let model = list[indexPath.row]
            delegate?.didSelectTask(model)
            
        }
        
    }

