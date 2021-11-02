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
        Rectangle()
            .fill(.ultraThinMaterial)
            .frame(maxWidth: size.radius, maxHeight: .infinity)
            .overlay(
                ButtonPanel(petal: petal)
            )
    }
}
