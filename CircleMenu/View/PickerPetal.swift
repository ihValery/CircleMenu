//
//  PickerPetal.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

struct PickerPetal: View {
    @State private var selection = 0
    @StateObject var petals = PetalOO()
    
    var body: some View {
        VStack {
            Picker("", selection: $selection) {
                Text("2").task {
                    print("2")
                }.tag(2)
                
                Text("3").task {
                    print("3")
                }.tag(3)
                
                Text("4").tag(4)
                Text("5").tag(5)
                Text("6").tag(6)
                Text("7").tag(7)
            }
            .pickerStyle(.segmented)
//            .background(Color.purple.opacity(0.3))
//            .cornerRadius(8)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(selection == 0 ? Color.purple : .black.opacity(0.8),
                            lineWidth: selection == 0 ? 2 : 1)
                
            )
            .padding(.top, 35)
            .padding(.horizontal, 25)
            
            Text("Selection - \(selection)")
            
            Spacer()
        }
    }
}

struct PickerPetal_Previews: PreviewProvider {
    static var previews: some View {
        PickerPetal()
    }
}
