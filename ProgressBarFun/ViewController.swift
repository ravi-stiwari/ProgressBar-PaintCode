//
//  ViewController.swift
//  ProgressBarFun
//
//  Created by Ravi Tiwari on 3/12/17.
//  Copyright © 2017 SelfStudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        progressBarView.progress = CGFloat(slider.value)
    }

}

