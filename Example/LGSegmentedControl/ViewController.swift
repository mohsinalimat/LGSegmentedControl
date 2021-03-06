//
//  ViewController.swift
//  LGSegmentedControl
//
//  Created by linusgeffarth on 11/27/2018.
//  Copyright (c) 2018 linusgeffarth. All rights reserved.
//

import UIKit
import LGSegmentedControl

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: LGSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // customization
        
        segmentedControl.spacing = 8
        segmentedControl.distribution = .fillEqually
        segmentedControl.segmentsCornerRadius = 8
        
        segmentedControl.selectedBackgroundColor = #colorLiteral(red: 0.2196078431, green: 0.6235294118, blue: 0.9764705882, alpha: 1)
        segmentedControl.selectedTextColor = .white
        
        segmentedControl.deselectedBackgroundColor = #colorLiteral(red: 0.2196078431, green: 0.6235294118, blue: 0.9764705882, alpha: 0.15)
        segmentedControl.deselectedTextColor = .darkText
                
        // data source
        segmentedControl.segments = [
            LGSegment(title: "1 day"),
            LGSegment(title: "3 weeks"),
            LGSegment(title: "2 months"),
            LGSegment(title: "Quarter")
        ]
        // make sure to set the selected index AFTER assigning the segments
        segmentedControl.selectedIndex = 1
    }
    
    @IBAction func selectedSegment(_ segmentedControl: LGSegmentedControl) {
        print(segmentedControl.selectedSegment?.title ?? "nil", segmentedControl.selectedIndex ?? -1)
    }
}
