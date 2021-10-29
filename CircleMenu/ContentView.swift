//
//  ContentView.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            FullPetal(start: 0, color: .yellow)
            FullPetal(start: 60, color: .blue)
            FullPetal(start: 120, color: .orange)
            FullPetal(start: 180, color: .green)
            FullPetal(start: 240, color: .red)
            FullPetal(start: 300, color: .purple)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
