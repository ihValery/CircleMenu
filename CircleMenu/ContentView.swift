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
            Petal(startAngel: .degrees(0 - 90), endAngel: .degrees(60 - 90))
                .fill(Color.yellow)
            Petal(startAngel: .degrees(60 - 90), endAngel: .degrees(120 - 90))
                .fill(Color.orange)
            Petal(startAngel: .degrees(120 - 90), endAngel: .degrees(180 - 90))
                .fill(Color.blue)
            Petal(startAngel: .degrees(180 - 90), endAngel: .degrees(240 - 90))
                .fill(Color.red)
            Petal(startAngel: .degrees(240 - 90), endAngel: .degrees(300 - 90))
                .fill(Color.green)
            Petal(startAngel: .degrees(300 - 90), endAngel: .degrees(0 - 90))
                .fill(Color.purple)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
