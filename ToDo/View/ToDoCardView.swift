//
//  ToDoCardView.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import SwiftUI

struct ToDoCardView: View {
    
    @Binding var task: Task
    let onDelete: () -> Void
    
    func handleCompleteTask() {
        task.isCompleted.toggle()
    }
    
    var body: some View {
        
        HStack {
            Button(action: {handleCompleteTask()}, label: {
                Image(systemName: task.isCompleted ? "circle.fill" : "circle").foregroundStyle(Color(red: 78/255, green: 168/255, blue: 222/255))
            })
            
            Spacer()
            
            Text(task.title)
                .strikethrough(task.isCompleted)
                .fontWeight(.medium)
                .foregroundStyle(Color(red: 242/255, green: 242/255, blue: 242/255))

            
            Spacer()

            Button(action: {onDelete()}, label: {
                Image(systemName: "trash").foregroundStyle(Color(red: 128/255, green: 128/255, blue: 128/255))
            })
            
        }
        .padding()
        .frame(height: 64)
        .background(Color(red: 38/255, green: 38/255, blue: 38/255))
        .cornerRadius(12)
        .padding(.horizontal, 24)
    }
}
