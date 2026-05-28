//
//  CreateView.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import SwiftUI

struct CreateView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    
    @FocusState private var isFocused: Bool
    
    
    func handleAddTask() {
        guard !viewModel.task.isEmpty else { return }
        
        viewModel.tasks.append(Task(title: viewModel.task))
        viewModel.task = ""
        
    }
    
    var body: some View {
        HStack(spacing: 8) {
            TextField("", text: $viewModel.task, prompt: Text("Adicione uma nova tarefa")
                .foregroundColor(Color(red: 128/255, green: 128/255, blue: 128/255))).padding(.leading, 10)
                .frame(height: 54)
                .background(Color(red: 38/255, green: 38/255, blue: 38/255))
                .foregroundStyle(Color(red: 242/255, green: 242/255, blue: 242/255))
                .border(isFocused ? Color(red: 94/255, green: 96/255, blue: 206/255) : Color.clear, width: 2)
                .cornerRadius(6)
                .focused($isFocused)
                .onSubmit {
                    handleAddTask()
                }
            
            Button(action: {handleAddTask()}, label: {
                HStack {
                    Image(systemName: "plus.circle")
                }
                .frame(width: 52, height: 54)
                .background(Color(red: 30/255, green: 111/255, blue: 159/255))
                .foregroundColor(.white)
                .cornerRadius(10)
                
            })
            
        }
        .padding(.horizontal, 24)
        .offset(y: -20)
        .background(Color(red: 26/255, green: 26/255, blue: 26/255))
        
    }
}
