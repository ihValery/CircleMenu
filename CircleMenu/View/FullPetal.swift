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
    var radian: Double
    var color: Color
    
    var body: some View {
        ZStack {
            PetalBackground(start: start, radian: start + radian)
                .foregroundStyle(.radialGradient(colors: [color, color.opacity(0)], center: .center, startRadius: 50, endRadius: size.radius - 10))
            PetalStroke(start: start, radian: start + radian)
                .stroke(RadialGradient(colors: [.black, .black.opacity(0)], center: .center, startRadius: 10, endRadius: size.radius - 10), lineWidth: 2)
        }
    }
}

struct FullPetal_Previews: PreviewProvider {
    static var previews: some View {
        FullPetal(start: 0, radian: 60, color: .yellow)
    }
}
