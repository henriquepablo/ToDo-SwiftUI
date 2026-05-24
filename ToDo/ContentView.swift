//
//  ContentView.swift
//  ToDo
//
//  Created by pablo henrique on 23/05/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                HeaderView()
                
                CreateView()
                
                BodyView()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {
    var body: some View {
        ZStack {
            Color(red: 13/255, green: 13/255, blue: 13/255)
                .edgesIgnoringSafeArea(.all)
            Image("Logo")
                .resizable()
                .frame(width: 110, height: 32)

        }.frame(height: 137)
    }
}

struct CreateView: View {
    @State private var value: String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack(spacing: 8) {
            TextField("", text: $value, prompt: Text("Adicione uma nova tarefa")
                .foregroundColor(Color(red: 128/255, green: 128/255, blue: 128/255))).padding(.leading, 10)
                .frame(height: 54)
                .background(Color(red: 38/255, green: 38/255, blue: 38/255))
                .foregroundStyle(Color(red: 242/255, green: 242/255, blue: 242/255))
                .border(isFocused ? Color(red: 94/255, green: 96/255, blue: 206/255) : Color.clear, width: 2)
                .cornerRadius(6)
                .focused($isFocused)
            
            Button(action: {}, label: {
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

struct BodyView: View {
    
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
                        Text("0")
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
                        Text("0")
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
                
                Image("Clipboard")
                    .padding(.top, 48)
                    .padding(.bottom, 16)
                
                Text("Você ainda não tem tarefas cadastradas")
                    .bold()
                    .foregroundStyle(Color(red: 128/255, green: 128/255, blue: 128/255))
                Text("Crie tarefas e organize seus itens a fazer")
                    .foregroundStyle(Color(red: 128/255, green: 128/255, blue: 128/255))
                    
            }
        }
    }
}
