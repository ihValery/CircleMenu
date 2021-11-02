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
    @State private var show: Bool = false
    @State private var selectColor: Color = .clear
    
    var body: some View {
        HStack {
            TopPanelColor(petal: petal)
            
            Spacer()
            
            ZStack {
                ForEach(petal.petals) { item in
                    FullPetal(start: angle(index: item.id), radian: radian(), color: item.color)
                        .animation(.spring(dampingFraction: 0.4).speed(4), value: petal.petals)
                        .onTapGesture {
                            selectColor = item.color
                        }
                }
                .opacity(show ? 1 : 0)
                .scaleEffect(show ? 1 : 0)
                .animation(.easeInOut(duration: 0.2), value: show)
                .rotationEffect(show ? .degrees(360) : .degrees(0))
                .animation(.spring(dampingFraction: 0.8, blendDuration: 2), value: show)
                
                ButtonHandTap(show: $show)
                    .opacity(show ? 0.6 : 1)
            }
            
            Spacer()
            
            RightColorPanel(selectColor: $selectColor)
        }
        .edgesIgnoringSafeArea(.all)
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
.previewInterfaceOrientation(.landscapeLeft)
    }
}
