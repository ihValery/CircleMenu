//
//  PetalOO.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

class PetalOO: ObservableObject {
    @Published var petals: [PetalDO] = []
    
    func add(color: Color) {
        if petals.contains(where: { $0.color == color }) {
            
            if let last = petals.last, last.color == color {
                petals.removeLast()
            } else {
                print("Такой цвет уже есть ))")
            }
            
        } else {
            guard petals.count < 10 else { return }
            
            petals.append(PetalDO(id: petals.count, color: color))
        }
    }
}
