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
    
    init(start: Double, end: Double) {
        startAngel = .degrees(start - 90)
        endAngel = .degrees(end - 90)
    }
    
    func path(in rect: CGRect) -> Path {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2 - 20
        
        let one = CGPoint(
            x: center.x + (radius / 2.5) * cos(CGFloat(startAngel.radians)),
            y: center.y + (radius / 2.5) * sin(CGFloat(startAngel.radians))
        )
        
        let two = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngel.radians)),
            y: center.y + radius * sin(CGFloat(startAngel.radians))
        )
        
        let four = CGPoint(
            x: center.x + (radius / 2.5) * cos(CGFloat(endAngel.radians)),
            y: center.y + (radius / 2.5) * sin(CGFloat(endAngel.radians))
        )
        
        var p = Path()
        p.move(to: one)
        p.addLine(to: two)
        p.addArc(center: center, radius: radius, startAngle: startAngel, endAngle: endAngel, clockwise: false)
        p.addLine(to: four)
        p.addArc(center: center, radius: radius / 2.5, startAngle: endAngel, endAngle: startAngel, clockwise: true)
        
        return p
    }
}
