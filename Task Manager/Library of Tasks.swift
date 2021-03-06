//
//  Library of Tasks.swift
//  Task Manager
//
//  Created by Gabriela Torres on 9/18/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import Foundation

class TaskLibrary {
    var taskArray : [TaskData] = [TaskData(title: "Naps", details: "Go home and take a nap."), TaskData(title: "Eat", details: "Eat three meals a day."), TaskData(title: "School", details: "Go to school.")]
    
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
            print("\(task.title), \(task.details)")
        }
    }
    func listOfIncomplete() {
        //Checking for incomplete tasks in the task array
        for task in taskArray {
            if !task.completionStatus {
                print("\(task.title), \(task.details)")
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
        for index in 0..<taskArray.count {
            if taskArray[index].completionStatus == false {
                print("\(index).\(taskArray[index].title)")
            }
        }
        print("Please enter the number of the task you have completed:")
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable number.")
            userInput = Int(readLine()!)
        }
        taskArray[userInput!].completionStatus = true
        //Remove the due date since the task is complete
        taskArray[userInput!].dueDate = nil
    }
    func listOfComplete() {
        //Checking for completed tasks in the task array
        for task in taskArray {
            if task.completionStatus {
                print("\(task.title), \(task.details)")
            }
        }
    }
    func completeToIncomplete() {
        //Change a tasks status
        //Marking a task a complete
        for index in 0..<taskArray.count {
            if taskArray[index].completionStatus == true {
                print("\(index).\(taskArray[index].title)")
            }
        }
        print("Please enter the number of the task want to incomplete:")
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable number.")
            userInput = Int(readLine()!)
        }
        taskArray[userInput!].completionStatus = false
        //Removing the due date since the task is now incomplete
        taskArray[userInput!].dueDate = nil
    }
    func deleteTasks() {
        //List all of tasks in title and detail with a number for the user to select
        for index in 0..<taskArray.count {
            print("\(index).\(taskArray[index].title), \(taskArray[index].details)")
        }
        print("Please enter the number of the task you want to revome:")
        var userInput = Int(readLine()!)
        let validTaskIndex = Array(0..<taskArray.count)
        
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid input. Please enter a usable number.")
            userInput = Int(readLine()!)
        }
        taskArray.remove(at: userInput!)
    }
    func surprise() {
        //I guess you can call this an easter egg.
        sleep(10)
        print("What did you expect...")
        sleep(5)
        print("You shouldn't have done that. Exit out of tasks immediately...")
        sleep(5)
        print("Why would you pick number nine when I say specifically said 1 through 8. What are you a little kid that want to see what will happen. Well you just wait and see!")
        sleep(5)
        print("Just kidding! Don't pick number nine again. Now go back to doing your tasks.")
        sleep(10)
    }
}

