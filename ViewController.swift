//
//  ViewController.swift
//  Paint
//
//  Created by NastyaDoinychko on 06.05.15.
//  Copyright (c) 2015 NastyaDoinychko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clean: UIButton!
    @IBOutlet var drawView: AnyObject?
    //@IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearTapped() {
        
        var theDrawView : DrawView = drawView as DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
        
    }
    
  /*  @IBAction func clearLast() {
        var theDrawView : DrawView = drawView as DrawView
        theDrawView.lines.removeLast()
        theDrawView.setNeedsDisplay()
        
    }*/
    
    @IBAction func sliser(sender: UISlider) {
        var theDrawView : DrawView = drawView as DrawView
        var currentValue = CGFloat(sender.value)
        theDrawView.drawSize = currentValue
    }
    
    @IBAction func btightness(sender: UISlider) {
        var theDrawView : DrawView = drawView as DrawView
        var currentValue = CGFloat(sender.value)
        theDrawView.drawBright = currentValue
        clean.setTitleColor (UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright), forState: UIControlState.Normal)
       // clean.backgroundColor = UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright)
    }
    
    @IBAction func rColor(sender: UISlider) {
        var theDrawView : DrawView = drawView as DrawView
        var currentValue = CGFloat(sender.value)
        theDrawView.drawColorRed = currentValue
        clean.setTitleColor (UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright), forState: UIControlState.Normal)
        //clean.backgroundColor = UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright)
    }
    
    @IBAction func gColor(sender: UISlider) {
        var theDrawView : DrawView = drawView as DrawView
        var currentValue = CGFloat(sender.value)
        theDrawView.drawColorGreen = currentValue
        clean.setTitleColor (UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright), forState: UIControlState.Normal)
        //clean.backgroundColor = UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright)
    }
    
    @IBAction func bColor(sender: UISlider) {
        var theDrawView : DrawView = drawView as DrawView
        var currentValue = CGFloat(sender.value)
        theDrawView.drawColorBlue = currentValue
        clean.setTitleColor (UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright), forState: UIControlState.Normal)
        //clean.backgroundColor = UIColor(red: theDrawView.drawColorRed, green: theDrawView.drawColorGreen, blue: theDrawView.drawColorBlue, alpha: theDrawView.drawBright)
    }


}

