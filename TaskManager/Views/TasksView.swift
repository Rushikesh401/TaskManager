//
//  TasksView.swift
//  TaskManager
//
//  Created by Rushikesh Suradkar on 11/04/25.
//

import SwiftUI

struct TasksView: View {
    @StateObject private var viewModel: TasksViewModel
    private var taskService : TaskServiceProtocol
    
    init(taskService: TaskServiceProtocol) {
        self.taskService = taskService
        self._viewModel = StateObject(wrappedValue: TasksViewModel(taskService: taskService))
    }
    
    var body: some View {
        List(viewModel.tasks) { task in
            HStack {
                Text(task.title)
                Spacer()
                Image(systemName: task.completionStatus ? "checkmark.circle" : "circle")
            }
           
        }
        .onAppear() {
            viewModel.fetchTask()
        }
    }
}

#Preview {
    TasksView(taskService:  MockTaskManager())
}
