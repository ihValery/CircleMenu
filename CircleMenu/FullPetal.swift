//
//  FullPetal.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 29.10.2021.
//

import SwiftUI

struct FullPetal: View {
    var start: Double
    var color: Color
    
    var body: some View {
        ZStack {
            Petal(start: start, end: start + 60)
                .foregroundStyle(.radialGradient(colors: [color, color.opacity(0)], center: .center, startRadius: 10, endRadius: UIScreen.main.bounds.width / 2.5))
            Petal(start: start, end: start + 60)
                .stroke(.clear, lineWidth: 40)
        }
//        .background(Color.black)
    }
}

struct FullPetal_Previews: PreviewProvider {
    static var previews: some View {
        FullPetal(start: 0, color: .yellow)
    }
}
