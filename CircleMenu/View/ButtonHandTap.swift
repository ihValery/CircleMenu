//
//  ButtonHandTap.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

struct ButtonHandTap: View {
    let size = Size()
    @Binding var show: Bool
    @Binding var selectColor: Color
    
    var body: some View {
        Button {
            show.toggle()
            withAnimation(.easeOut) {
                selectColor = .clear
            }
        } label: {
            Circle()
                .strokeBorder(Color.black, lineWidth: 1.3)
                .background(.ultraThinMaterial).clipShape(Circle())
                .frame(width: size.buttonDiametr, height: size.buttonDiametr)
                .overlay(
                    Image(systemName: "hand.tap")
                        .font(.largeTitle)
                        .foregroundColor(.black.opacity(0.8))
                )
        }
    }
}
