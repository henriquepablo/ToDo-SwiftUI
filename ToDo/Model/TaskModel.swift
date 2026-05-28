//
//  TaskModel.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let title: String
    var isCompleted: Bool = false
}
