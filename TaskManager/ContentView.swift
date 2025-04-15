//
//  ContentView.swift
//  TaskManager
//
//  Created by Rushikesh Suradkar on 11/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TasksView(taskService: TaskManager())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
