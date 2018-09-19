//
//  Menu.swift
//  Task Manager
//
//  Created by Gabriela Torres on 9/18/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import Foundation

class Menu {
    let taskManager = TaskLibrary()
    var shouldExit = false //When this is true, we should quit running the video game library.
    func go() { //This function will handle making the menu right. It will display the menu and take user input until the user wishes to quit the application.
        while !shouldExit {
            printMenu()
            var input = getInput()
            while !validateInput(input) {
                printMenu()
                input = getInput()
            }
            handleInput(input)
        }
    }
    func validateInput(_ input: String) -> Bool { //Checking for valide input
        let validMenuOptions = Array(1...8)
        guard let number = Int(input) else {
            return false
        }
        return validMenuOptions.contains(number)
    }
    func printMenu() {
        //This should contain a print statement that prints out a formatted list of options.
        print("Select one of the options below:\n")
        print("""
1. Create a New Task
2. List of Tasks
3. List of Incomplete Tasks
4. Mark Task as Complete
5. List of Completed Tasks
6. Mark Completed Task as Incomplete
7. Delete Tasks
8. Exit

Please enter a number between 1 and 8:
""")
    }
    //Make a function called handleInput that takes our user input as a parameter and depending on what they enter print out what we would do.
    func handleInput(_ input: String) {
        switch input {
        case "1":
            //The User should be able to create new tasks.
            taskManager.createNewTask()
        case "2":
            //The User should be able to see a list of all tasks (Completed and Incomplete).
            taskManager.listOfAllTasks()
        case "3":
            //The User should be able to see a list of only Incomplete tasks.
            taskManager.listOfIncomplete()
        case "4":
            //The User should be able to mark a task as complete.
            taskManager.markCompleteTask()
        case "5":
            //The User should be able to see a list of only completed tasks.
            taskManager.listOfComplete()
        case "6":
            //The User should be able to mark a completed task as incomplete.
            taskManager.completeToIncomplete()
        case "7":
            //The User should be able to delete a task.
            taskManager.deleteTasks()
        case "8":
            //The User should be able to exit the program.
            exit()
        default:
            break
        }
    }
    func exit() { //This function will be called when the user is ready to quit the application.
        //Since the user is ready to exit, set shouldExit = true
        shouldExit = true
        //Show user a message
        print("Thank you for using the application.")
    }
    func getInput() -> String { //Getting users input
        var userInput = readLine()
        while userInput == nil || userInput == "" {
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
}

