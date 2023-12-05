//
//  MyTask.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

class MyTask {
    
    var id: String
    var title: String
    var descriptionTitle: String
    var date: String
    //let time: String
    var tag: MyTaskTag
    
    
    //computed variable -> change any typ of data to anothr type of data
    
    var formattedDate: Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd/MM/yyyy hh:mm a"
        return formatter.date(from: date) ?? Date()
    }
    
    var isToday: Bool {
        return Calendar.current.isDateInToday (formattedDate)
    }
    
    init(id: String = "",
         title: String,
         descriptionTitle: String = "",
         date: String,
         //time: String = "",
         tag: MyTaskTag) {
        self.id = id
        self.title = title
        self.descriptionTitle = descriptionTitle
        self.date = date
        //self.time = time
        self.tag = tag
    }
}

class MyTaskTag {

    
   var title: String
var color: String
   var isSelected: Bool
    
    var colorValue: UIColor {
        return UIColor(named: color) ?? .black
    }
    
 init(title: String, color: String, isSelected: Bool = false) {
        self.title = title
        self.color = color
        self.isSelected = isSelected
    }
}
