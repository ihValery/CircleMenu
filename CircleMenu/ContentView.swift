//
//  ContentView.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    let size = ScreenSize()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.mint, .purple], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            FullPetal(start: 0, color: .yellow)
            FullPetal(start: 60, color: .blue)
            FullPetal(start: 120, color: .orange)
            FullPetal(start: 180, color: .green)
            FullPetal(start: 240, color: .red)
            FullPetal(start: 300, color: .purple)
            
            Circle()
                .frame(width: size.buttonRadius * 2, height: size.buttonRadius * 2)
                .opacity(0.3)
                .overlay(
                    Image(systemName: "hand.tap")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
