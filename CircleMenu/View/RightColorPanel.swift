//
//  RightColorPanel.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 02.11.2021.
//

import SwiftUI

struct RightColorPanel: View {
    let size = Size()
    @Binding var selectColor: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.ultraThinMaterial)
            Rectangle()
                .fill(selectColor)
        }
        .frame(maxWidth: size.radius, maxHeight: .infinity)
    }
}

struct RightColorPanel_Previews: PreviewProvider {
    static var previews: some View {
        RightColorPanel(selectColor: .constant(.yellow))
    }
}
