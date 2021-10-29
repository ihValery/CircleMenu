//
//  ScreenSize.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import UIKit

class ScreenSize {
    private let size = UIScreen.main.bounds
    
    private var width: CGFloat {
        size.width
    }
    
    private var height: CGFloat {
        size.height
    }
    
    var radius: CGFloat {
        let minSize = min(width, height) / 2 - 20
        return minSize < 190 ? minSize : 190
    }
    
    var buttonRadius: CGFloat = 45
    
    var buttonDiametr: CGFloat {
        buttonRadius * 2
    }
}
