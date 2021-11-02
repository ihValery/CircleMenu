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
    
    var body: some View {
        Button {
            show.toggle()
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

struct ButtonHandTap_Previews: PreviewProvider {
    static var previews: some View {
        ButtonHandTap(show: .constant(true))
    }
}
