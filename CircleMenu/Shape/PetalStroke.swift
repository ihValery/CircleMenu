//
//  PetalStroke.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

struct PetalStroke: Shape {
    let size = ScreenSize()
    
    var startAngel: Angle
    var endAngel: Angle
    
    init(start: Double, radian: Double) {
        startAngel = .degrees(start + 90)
        endAngel = .degrees(radian + 90)
    }
    
    func path(in rect: CGRect) -> Path {
        let newStart: Angle = startAngel + .degrees(2)
        let newEnd: Angle = endAngel - .degrees(2)
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let one = CGPoint(
            x: center.x + size.radius * cos(CGFloat(newStart.radians)),
            y: center.y + size.radius * sin(CGFloat(newStart.radians))
        )
        
        let two = CGPoint(
            x: center.x + size.radius * cos(CGFloat(newEnd.radians)),
            y: center.y + size.radius * sin(CGFloat(newEnd.radians))
        )
        
        var p = Path()
        p.move(to: one)
        p.addArc(center: center, radius: size.buttonRadius + 8,
                 startAngle: startAngel + .degrees(5),
                 endAngle: endAngel - .degrees(5),
                 clockwise: false)
        p.addLine(to: two)
        return p
    }
}
