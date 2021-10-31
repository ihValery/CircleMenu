//
//  PetalBackground.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 29.10.2021.
//

import SwiftUI

struct PetalBackground: Shape {
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
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        var p = Path()
        p.addArc(center: center, radius: size.radius,
                 startAngle: startAngle + .degrees(2), endAngle: endAngle - .degrees(2),
                 clockwise: false)
        p.addArc(center: center, radius: size.buttonRadius + 8,
                 startAngle: endAngle - .degrees(5),
                 endAngle: startAngle + .degrees(5),
                 clockwise: true)
        return p
    }
}
