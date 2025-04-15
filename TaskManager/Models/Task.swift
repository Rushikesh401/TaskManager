//
//  Task.swift
//  TaskManager
//
//  Created by Rushikesh Suradkar on 11/04/25.
//

import Foundation

struct Task: Identifiable {
    var id : Int
    var title : String
    var completionStatus : Bool
    
}


protocol TaskServiceProtocol {
    func getAllTasks() -> [Task]
    func addTask(task: Task)
    func deleteTask(id: Int)
}

class TaskManager : TaskServiceProtocol {
    var tasks : [Task] = []
    func getAllTasks() -> [Task] {
        return [
            Task(id: 1, title: "Call Mom", completionStatus: false),
            Task(id: 2, title: "Call Papa", completionStatus: false),
            Task(id: 3, title: "Call Gf", completionStatus: true),
        ]
    }
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func deleteTask(id: Int) {
        tasks.removeAll { $0.id == id }
    }
}

class MockTaskManager : TaskServiceProtocol {
    var tasks : [Task] = []
    func getAllTasks() -> [Task] {
        return [   Task(id: 1, title: "Dummy ", completionStatus: false),
                   Task(id: 2, title: "Fake", completionStatus: false),
                   Task(id: 3, title: "Ok", completionStatus: true),
        ]
    }
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func deleteTask(id: Int) {
        tasks.removeAll { $0.id == id }
    }
}
