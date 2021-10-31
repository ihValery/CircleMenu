//
//  Size.swift
//  CircleMenu
//
//  Created by Валерий Игнатьев on 30.10.2021.
//

import UIKit

class Size {
    private let size = UIScreen.main.bounds
    
    private var height: CGFloat {
        size.height
    }

    var width: CGFloat {
        size.width
    }
    
    ///Радиус от наименьшей стороны но не больше 160
    var radius: CGFloat {
        let minSize = min(width, height) / 2 - 20
        return minSize < 160 ? minSize : 160
    }
    
    ///Радиус кнопки в зависимости от телефона
    var buttonRadius: CGFloat {
        height > 750 ? 45 : 38
    }
    
    ///Диаметр кнопки в зависимости от телефона
    var buttonDiametr: CGFloat {
        buttonRadius * 2
    }
}
