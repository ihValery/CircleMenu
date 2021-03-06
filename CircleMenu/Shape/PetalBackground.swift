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

    //Angle сам по себе не является VectorArithmetic, Angle в радианах — это Double
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
                 startAngle: endAngle - .degrees(6),
                 endAngle: startAngle + .degrees(6),
                 clockwise: true)
        return p
    }
}
