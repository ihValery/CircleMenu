//
//  TopPanelColor.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 01.11.2021.
//

import SwiftUI

struct TopPanelColor: View {
    let size = Size()
    @ObservedObject var petal: PetalOO
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(.ultraThinMaterial)
            .frame(width: size.width, height: size.radius)
            .overlay(
                ButtonPanel(petal: petal)
            )
    }
}
