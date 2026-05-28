//
//  ListEmptyView.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import SwiftUI

struct ListEmptyView: View {
    var body: some View {
        
        VStack {
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
