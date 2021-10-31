//
//  ButtonPanel.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

struct ButtonPanel: View {
    @ObservedObject var petal: PetalOO
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    AddColor(color: .yellow, petal: petal)
                        .padding(.leading)
                    AddColor(color: .green, petal: petal)
                    AddColor(color: .red, petal: petal)
                    AddColor(color: .purple, petal: petal)
                    AddColor(color: .blue, petal: petal)
                    AddColor(color: .brown, petal: petal)
                    AddColor(color: .mint, petal: petal)
                }
                Group {
                    AddColor(color: .black, petal: petal)
                    AddColor(color: .pink, petal: petal)
                    AddColor(color: .teal, petal: petal)
                    AddColor(color: .orange, petal: petal)
                    AddColor(color: .cyan, petal: petal)
                    AddColor(color: .gray, petal: petal)
                    AddColor(color: .indigo, petal: petal)
                        .padding(.trailing)
                }
            }
        }
    }
}

struct AddColor: View {
    var color: Color
    @ObservedObject var petal: PetalOO
    
    var body: some View {
        Button {
            petal.add(color: color)
        } label: {
            Circle()
                .fill(color)
                .frame(width: 40, height: 40)
        }
    }
}
