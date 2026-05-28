//
//  BodyView.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import SwiftUI

struct BodyView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Color(red: 26/255, green: 26/255, blue: 26/255)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Criadas")
                        .bold()
                        .foregroundStyle(Color(red: 28/255, green: 168/255, blue: 222/255))
                        
                    ZStack {
                        Color(red: 51/255, green: 51/255, blue: 51/255)
                        Text("\(viewModel.tasks.count)")
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .frame(width: 25, height: 19)
                    .cornerRadius(12)
                    
                    Spacer()
                    
                    Text("Concluídas")
                        .bold()
                        .foregroundStyle(Color(red: 28/255, green: 168/255, blue: 222/255))
                        
                    ZStack {
                        Color(red: 51/255, green: 51/255, blue: 51/255)
                        Text("\(viewModel.tasks.filter { $0.isCompleted }.count)")
                            .bold()
                            .foregroundStyle(.white)
                            
                    }
                    .frame(width: 25, height: 19)
                    .cornerRadius(12)
                }
                .padding(.horizontal, 24)
                
                Divider()
                    .background(Color(red: 128/255, green: 128/255, blue: 128/255))
                    .padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
            }
            
            
            VStack {
                if (viewModel.tasks.isEmpty) {
                    ListEmptyView()
                } else {
                    ScrollView {
                        LazyVStack {
                            ForEach($viewModel.tasks) { $task in
                                ToDoCardView(task: $task, onDelete: {
                                    viewModel.handleDelete(task: task)
                                }, handleComplete: {
                                    viewModel.handleComplete(task: task)
                                })
                            }
                        }
                    }
                    .padding(.vertical, 60)
                }
            }
            .padding(.vertical, 20)
        }
    }
}
