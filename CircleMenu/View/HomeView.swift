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
    
    var body: some View {
        VStack {
            TopPanelColor(petal: petal)
            
            Spacer()
            
            ZStack {
                ForEach(petal.petals) { item in
                    FullPetal(start: angle(index: item.id), radian: radian(), color: item.color)
                        .animation(.spring(dampingFraction: 0.5).speed(1), value: petal.petals)
                }
                ButtonHandTap()
            }
            
            Spacer()
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
