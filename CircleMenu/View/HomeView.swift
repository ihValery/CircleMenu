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
        ZStack {
//            LinearGradient(colors: [.mint, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
//                .ignoresSafeArea()
            
            VStack {
                ButtonPanel(petal: petal)
                    .padding(.top)
                
                Spacer()
            }
            
            ForEach(petal.petals) { item in
                FullPetal(start: angleDependingCount(index: item.id), radian: radian(), color: item.color)
            }
            
            ButtonHandTap()
        }
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
