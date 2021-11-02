//
//  PetalStroke.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

struct PetalStroke: Shape {
    let size = Size()
    
    var startAngle: Angle
    var endAngle: Angle
    
    var animatableData: AnimatablePair<Double, Double> {
        get {
            AnimatablePair(startAngle.radians, endAngle.radians)
        }
        set {
            startAngle = Angle.radians(newValue.first)
            endAngle = Angle.radians(newValue.second)
        }
    }
    
    init(start: Double, radian: Double) {
        startAngle = .degrees(start + 90)
        endAngle = .degrees(radian + 90)
    }
    
    func path(in rect: CGRect) -> Path {
        let newStart: Angle = startAngle + .degrees(2)
        let newEnd: Angle = endAngle - .degrees(2)
        
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
                 startAngle: startAngle + .degrees(6),
                 endAngle: endAngle - .degrees(6),
                 clockwise: false)
        p.addLine(to: two)
        return p
    }
}
