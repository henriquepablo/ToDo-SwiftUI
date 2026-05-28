//
//  ContentView.swift
//  ToDo
//
//  Created by pablo henrique on 23/05/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HeaderView()
                
                CreateView(viewModel: viewModel)
                
                BodyView(viewModel: viewModel)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
