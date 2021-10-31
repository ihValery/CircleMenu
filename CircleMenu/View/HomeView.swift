//
//  HomeView.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 26.10.2021.
//

import SwiftUI

struct HomeView: View {
    let size = ScreenSize()
    @StateObject private var petal = PetalOO()
    
    var body: some View {
        VStack {
            ButtonPanel(petal: petal)
                .padding(.top)
            
            Spacer()
            
            
            ZStack {
                ForEach(petal.petals) { item in
                    FullPetal(start: angleDependingCount(index: item.id), radian: radian(), color: item.color)
                }
                ButtonHandTap()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.ultraThinMaterial)
                .padding()
                .frame(width: size.width, height: size.radius)
        }
        .background(
            Image("background")
                .resizable()
                .scaleEffect(2)
                .opacity(0.6)
        )
    }
    
    func angleDependingCount(index: Int) -> Double {
        Double(360 / petal.petals.count * index)
    }
    
    func radian() -> Double {
        Double(360 / petal.petals.count)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
