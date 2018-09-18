//
//  Task Data Model.swift
//  Task Manager
//
//  Created by Gabriela Torres on 9/18/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import Foundation

//Super Class
class TaskData {
    var title: String
    var details: String
    var completionStatus: Bool = true
    var dueDate: Date?
    
    init(title: String, details: String) {
        self.title = title
        self.details = details
    }
}
