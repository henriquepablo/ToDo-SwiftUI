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
}
