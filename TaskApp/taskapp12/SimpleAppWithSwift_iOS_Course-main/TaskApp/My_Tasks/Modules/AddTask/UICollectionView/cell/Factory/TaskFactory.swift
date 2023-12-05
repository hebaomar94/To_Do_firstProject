//
//  TaskFactory.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 23/11/2023.
//

import Foundation

class TaskFactory {
var tags: [MyTaskTag] 
    init () {
      tags = [
    .init(title: "Workout",
                              color: "Accent"),
            
     .init(title: "Finance",
                              color: "secondary"),
            
            
     .init(title: "Health",
                              color: "tertairy")
        ]
    }

}
