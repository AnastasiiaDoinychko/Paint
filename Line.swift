//
//  Line.swift
//  Paint
//
//  Created by NastyaDoinychko on 06.05.15.
//  Copyright (c) 2015 NastyaDoinychko. All rights reserved.
//

import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    var size: CGFloat
    var bright: CGFloat
    var colorRed: CGFloat
    var colorGreen: CGFloat
    var colorBlue: CGFloat
    
    init(start _start: CGPoint, end _end: CGPoint, size _size: CGFloat!, bright _bright: CGFloat!, colorRed _colorRed: CGFloat!, colorGreen _colorGreen: CGFloat!, colorBlue _colorBlue: CGFloat!) {
        start = _start
        end = _end
        size = _size
        bright = _bright
        colorRed = _colorRed
        colorGreen = _colorGreen
        colorBlue = _colorBlue
    }
    
}
