//
//  Petal.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 29.10.2021.
//

import SwiftUI

struct Petal: Shape {
    let size = ScreenSize()
    
    var startAngel: Angle
    var endAngel: Angle
    
    init(start: Double, end: Double) {
        startAngel = .degrees(start - 90)
        endAngel = .degrees(end - 90)
    }
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        var p = Path()
        p.addArc(center: center, radius: size.radius,
                 startAngle: startAngel + .degrees(2), endAngle: endAngel - .degrees(2),
                 clockwise: false)
        p.addArc(center: center, radius: size.buttonRadius + 10,
                 startAngle: endAngel - .degrees(5),
                 endAngle: startAngel + .degrees(5),
                 clockwise: true)
        return p
    }
}
