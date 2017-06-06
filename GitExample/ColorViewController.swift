//
//  ColorViewController.swift
//  GitExample
//
//  Created by dang huu duong on 6/6/17.
//  Copyright © 2017 dang huu duong. All rights reserved.
//
import UIKit

class ColorViewController: UIViewController {
    
    
    @IBAction func changeBackgroundColorPress(_ sender: Any) {
        let color = UIColor.random()
        self.view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 0.5)
    }
}
