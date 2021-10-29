//
//  Petal.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 29.10.2021.
//

import SwiftUI

struct Petal: Shape {
    var startAngel: Angle
    var endAngel: Angle
    
    func path(in rect: CGRect) -> Path {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius: CGFloat = 170
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngel.radians)),
            y: center.y + radius * sin(CGFloat(startAngel.radians))
        )
        
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(center: center, radius: radius, startAngle: startAngel, endAngle: endAngel, clockwise: false)
        p.addLine(to: center)
        
        return p
    }
}
