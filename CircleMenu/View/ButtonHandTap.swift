//
//  ButtonHandTap.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

struct ButtonHandTap: View {
    let size = ScreenSize()
    
    var body: some View {
        Button {
            
        } label: {
            Circle()
                .strokeBorder(Color.black, lineWidth: 2)
                .background(Color.black.opacity(0.2).clipShape(Circle()))
                .frame(width: size.buttonDiametr, height: size.buttonDiametr)
                .opacity(0.8)
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
        ButtonHandTap()
    }
}
