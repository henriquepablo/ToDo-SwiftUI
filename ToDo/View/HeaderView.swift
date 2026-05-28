//
//  HeaderView.swift
//  ToDo
//
//  Created by pablo henrique on 28/05/26.
//

import SwiftUI

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
