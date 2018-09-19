//
//  Library of Tasks.swift
//  Task Manager
//
//  Created by Gabriela Torres on 9/18/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import Foundation

class TaskLibrary {
    var taskArray : [TaskData] = [TaskData(title: "Naps", details: "Go home and take a nap."), TaskData(title: "Eat", details: "Eat three meals a day"), TaskData(title: "School", details: "Go to school")]
    
    func createNewTask() {
        //Prompt user to enter tilte and details for a new task to be added
        print("Please enter the title of the task you would like to add:")
        //Get title input from user and store in a variable
        var newTaskTitle = readLine()
        //Check and make sure the title isn’t nil or an empty string
        while newTaskTitle == nil || newTaskTitle == ""{
            print("Ivalid title. Enter a valid title.")
            newTaskTitle = readLine()
        }
        //Prompt user to enter tilte and details for a new task to be added
        print("Please enter the detail of the task you would like to add:")
        //Get detail input from user and store in a variable
        var newTaskDetails = readLine()
        //Check and make sure the details isn’t nil or an empty string
        while newTaskDetails == nil || newTaskDetails == ""{
            print("Ivalid information. Enter a valid infromation.")
            newTaskDetails = readLine()
        }
        //Instatantiate a new task with the title and details from user input
        let newTask = TaskData(title: newTaskTitle!, details: newTaskDetails!)
        //Adding a new task to our task array.
        taskArray.append(newTask)
    }
    func listOfAllTasks() {
        //Printing out all of the tasks
        for task in taskArray {
            print(task.title)
            print(task.details)
        }
    }
    func listOfIncomplete() {
        //Checking for incomplete tasks in the task array
        for task in taskArray {
            if !task.completionStatus {
                print(task.title)
                print(task.details)
                if let dueDate = task.dueDate{
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print("\(task.title), \(task.details) is due on: \(dateFormatter.string(from: dueDate))")
                }
            }
        }
    }
    func markCompleteTask() {
        //Marking a task a complete
        
    }
    func listOfComplete() {
        //Checking for completed tasks in the task array
    
    }
    func completeToIncomplete() {
        //Change a tasks status
        
    }
    func deleteTasks() {
        //List all of tasks in title and detail with a number for the user to select
        for index in 0..<taskArray.count {
            print("\(index).\(taskArray[index].title) \(taskArray[index].details)")
        }
        print("Please enter the name you want to revome:")
        var userInput = Int(readLine()!)
        let validTaskIndex = Array(0..<taskArray.count)
        
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid information. Please enter a usable information.")
            userInput = Int(readLine()!)
        }
        taskArray.remove(at: userInput!)
    }
}

