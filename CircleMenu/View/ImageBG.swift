//
//  ImageBG.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 01.11.2021.
//

import SwiftUI

struct ImageBG: View {
    var body: some View {
        Image("background")
            .resizable()
            .scaledToFill()
            .scaleEffect(2)
            .opacity(0.6)
    }
}
