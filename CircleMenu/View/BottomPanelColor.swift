//
//  BottomPanelColor.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 01.11.2021.
//

import SwiftUI

struct BottomPanelColor: View {
    let size = Size()
    @Binding var color: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .fill(.ultraThinMaterial)
            RoundedRectangle(cornerRadius: 40)
                .fill(color)
        }
        .frame(width: size.width, height: size.radius)
    }
}

struct BottomPanelColor_Previews: PreviewProvider {
    static var previews: some View {
        BottomPanelColor(color: .constant(.yellow))
    }
}
