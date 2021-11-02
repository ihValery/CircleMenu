//
//  FullPetal.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 29.10.2021.
//

import SwiftUI

struct FullPetal: View {
    let size = Size()
    
    var start: Double
    var radian: Double
    var color: Color
    
    var body: some View {
        ZStack {
            PetalBackground(start: start, radian: start + radian)
                .foregroundStyle(.radialGradient(colors: [color, color.opacity(0)], center: .center, startRadius: size.radius * 2 / 3, endRadius: size.radius))

            PetalStroke(start: start, radian: start + radian)
                .stroke(RadialGradient(colors: [.black, .black.opacity(0)], center: .center, startRadius: size.radius * 2 / 3, endRadius: size.radius), lineWidth: 1)
        }
    }
}

struct FullPetal_Previews: PreviewProvider {
    static var previews: some View {
        FullPetal(start: 0, radian: 60, color: .yellow)
    }
}
