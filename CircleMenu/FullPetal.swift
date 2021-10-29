//
//  FullPetal.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 29.10.2021.
//

import SwiftUI

struct FullPetal: View {
    let size = ScreenSize()
    
    var start: Double
    var color: Color
    
    var body: some View {
        ZStack {
            Petal(start: start, end: start + 60)
                .foregroundStyle(.radialGradient(colors: [color, color.opacity(0)], center: .center, startRadius: 10, endRadius: size.radius - 10))
        }
    }
}

struct FullPetal_Previews: PreviewProvider {
    static var previews: some View {
        FullPetal(start: 0, color: .yellow)
    }
}
