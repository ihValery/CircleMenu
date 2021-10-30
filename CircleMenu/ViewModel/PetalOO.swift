//
//  PetalOO.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import SwiftUI

class PetalOO: ObservableObject {
    @Published var petals: [PetalDO] = [PetalDO(id: 0, color: .yellow),
                                        PetalDO(id: 1, color: .brown)]
//                                        PetalDO(id: 2, color: .blue),
//                                        PetalDO(id: 3, color: .red),
//                                        PetalDO(id: 4, color: .green)]
//                                        PetalDO(id: 5, color: .purple)]
    
//    func fetch() {
//        petals = [PetalDO(color: .yellow),
//                  PetalDO(color: .brown),
//                  PetalDO(color: .blue),
//                  PetalDO(color: .red),
//                  PetalDO(color: .green)]
//    }
}
