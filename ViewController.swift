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
    
    @IBAction func unwindSettings(segue: UIStoryboardSegue) {
        
    }

}

