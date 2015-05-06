//
//  DrawView.swift
//  Paint
//
//  Created by NastyaDoinychko on 06.05.15.
//  Copyright (c) 2015 NastyaDoinychko. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var lines: [Line] = []
    var lastPoint: CGPoint?
    var drawSize: CGFloat = 1
    var drawBright: CGFloat = 1
    var drawColorRed: CGFloat = 0
    var drawColorGreen: CGFloat = 0
    var drawColorBlue: CGFloat = 0
    
    
    /* init (coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    }*/
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        lastPoint = touches.anyObject()?.locationInView(self)
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        var newPoint = touches.anyObject()?.locationInView(self)
        lines.append(Line(start: lastPoint!, end: newPoint!, size: drawSize, bright: drawBright, colorRed: drawColorRed, colorGreen: drawColorGreen, colorBlue: drawColorBlue))
        lastPoint = newPoint
        
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        CGContextSetLineCap(context, kCGLineCapRound)
       // CGContextSetRGBStrokeColor(context, 1, 1, 0, 1)
        for line in lines {
            CGContextBeginPath(context)
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetRGBStrokeColor(context, line.colorRed, line.colorGreen, line.colorBlue, line.bright)
            CGContextSetLineWidth(context, line.size)
            CGContextStrokePath(context)
        }
        
    }


}
