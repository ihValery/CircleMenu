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
                .fill(color)
            Petal(start: start, end: start + 60)
                .stroke(Color.systemApp, lineWidth: 10)
        }
//        .background(Color.black)
    }
}

struct FullPetal_Previews: PreviewProvider {
    static var previews: some View {
        FullPetal(start: 0, color: .yellow)
    }
}
