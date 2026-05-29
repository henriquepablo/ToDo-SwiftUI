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
        
        tasks.append(Task(id: UUID(), title: task))
        
        saveOnUserDefaults(list: tasks)
        
        task = ""
    }
    
    func handleDelete(task: Task) {
        tasks.removeAll { $0.id == task.id }
        saveOnUserDefaults(list: tasks)
        
    }
    
    func saveOnUserDefaults(list: [Task]) {
        if let encoded = try? JSONEncoder().encode(list) {
            UserDefaults.standard.set(encoded, forKey: "TaskList")
        }
    }
    
    func handleComplete(task: Task) {

        guard let index = tasks.firstIndex(where: {
            $0.id == task.id
        }) else {
            return
        }

        tasks[index].isCompleted.toggle()
        saveOnUserDefaults(list: tasks)
        
    }
    
    func loadTasks() {
        if let data = UserDefaults.standard.data(forKey: "TaskList"),
           let decodedTasks = try? JSONDecoder().decode([Task].self, from: data) {
            tasks = decodedTasks
        }
    }
}
