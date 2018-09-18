//
//  Library of Tasks.swift
//  Task Manager
//
//  Created by Gabriela Torres on 9/18/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import Foundation

class TaskLibrary {
    var taskArray : [TaskData] = [TaskData(title: "", details: "", completionStatus: "")]
    
    func createNewTask() {
        //Prompt user to enter tilte, details, and completion status for a new task to be added
        print("Please enter the title, details, and completion status of the task you would like to add:")
        //Get title input from user and store in a variable
        var newTaskTitle = readLine()
        //Check and make sure the input isn’t nil or an empty string
        while newTaskTitle == nil || newTaskTitle == ""{
            print("Ivalid title. Enter a valid title.")
            newTaskTitle = readLine()
        }
        //Instatantiate a new game with thr title from user input
        let newTask = TaskData(title: newTaskTitle!)
        //Add new game objet to our game array.
        taskArray.append(newTask)
    }
}

