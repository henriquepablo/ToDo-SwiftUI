//
//  ContentViewModel.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    
    @Published var task: String = ""
    @Published var tasks: [Task] = []
    
    func handleAddTask() {
        guard !task.isEmpty else { return }
        
        tasks.append(Task(title: task))
        task = ""
    }
    
    func handleDelete(task: Task) {
        tasks.removeAll { $0.id == task.id }
    }
    
    func handleComplete(task: Task) {

        guard let index = tasks.firstIndex(where: {
            $0.id == task.id
        }) else {
            return
        }

        tasks[index].isCompleted.toggle()
    }
}
