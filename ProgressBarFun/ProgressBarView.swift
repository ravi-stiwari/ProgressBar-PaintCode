//
//  ProgressBarView.swift
//  ProgressBarFun
//
//  Created by Ravi Tiwari on 3/12/17.
//  Copyright © 2017 SelfStudy. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {

    private var _innerProgress: CGFloat = 0.0
    
    var progress: CGFloat {
        get {
            return self._innerProgress * bounds.width
        }
        set(newProgress) {
            if newProgress > 1.0 {
                self._innerProgress = 1.0
            }
            else if newProgress < 0.0 {
                self._innerProgress = 0.0
            }
            else {
                self._innerProgress = newProgress
            }
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: progress)
    }
    
}
