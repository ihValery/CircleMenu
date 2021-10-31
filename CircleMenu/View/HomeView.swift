//
//  HomeView.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 26.10.2021.
//

import SwiftUI

struct HomeView: View {
    let size = Size()
    @StateObject private var petal = PetalOO()
    @State private var color: Color = .clear
    
    var body: some View {
        VStack {
            TopPanelColor(petal: petal)
            
            Spacer()
            
            ZStack {
                ForEach(petal.petals) { item in
                    FullPetal(start: angle(index: item.id), radian: radian(), color: item.color)
                        .animation(.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.6), value: petal.petals.count)
                }
                ButtonHandTap()
            }
            
            Spacer()
            
//            BottomPanelColor(color: $color)
        }
        .edgesIgnoringSafeArea(.vertical)
        .background(ImageBG())
    }

    ///Угол в зависимости от количества лепестков
    func angle(index: Int) -> Double {
        Double(360 / petal.petals.count * index)
    }

    ///Радиан в зависимости от количества лепестков
    func radian() -> Double {
        Double(360 / petal.petals.count)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
