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
    var completionStatus: String
    var dueDate: Date?
    
    init(title: String, details: String, completionStatus: String) {
        self.title = title
        self.details = details
        self.completionStatus = completionStatus
    }
}
