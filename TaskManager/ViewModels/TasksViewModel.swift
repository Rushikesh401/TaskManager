//
//  TasksViewModel.swift
//  TaskManager
//
//  Created by Rushikesh Suradkar on 11/04/25.
//

import Foundation
import Combine

class TasksViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    private let taskService : TaskServiceProtocol
    
    
    init(taskService: TaskServiceProtocol) {
        self.taskService = taskService
    }
    
    func fetchTask () {
        tasks = taskService.getAllTasks()
    }
    
    func addTask(id: Int , title: String) {
        taskService.addTask(task: Task(id: id, title: title, completionStatus: false ))
        fetchTask()
    }
    
    func deleteTask(id: Int) {
        taskService.deleteTask(id: id)
        fetchTask()
    }
    
}
