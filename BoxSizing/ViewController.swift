//
//  ViewController.swift
//  BoxSizing
//
//  Created by ST1 on 9.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    
    override func viewDidLoad() {
        let boxSizes = boxSize()
        
        firstView.frame = uiFrameSize(uiFrame: firstView.frame, isPortrail: true, originX: 20, originY: 20)
        
        secondView.frame = uiFrameSize(uiFrame: secondView.frame, isPortrail: true, originX: boxSizes.width + 40, originY: 20)
        
        thirdView.frame = uiFrameSize(uiFrame: thirdView.frame, isPortrail: true, originX: 20, originY: boxSizes.height + 40)
        
        fourthView.frame = uiFrameSize(uiFrame: fourthView.frame, isPortrail: true, originX: boxSizes.width + 40, originY: boxSizes.height + 40)
        
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

