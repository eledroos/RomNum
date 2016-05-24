//
//  FadeView.swift
//  RomNum
//
//  Created by Nasser Eledroos on 5/23/16.
//  Copyright © 2016 Nasser Eledroos. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func fadeIn() {
        UIView.animateWithDuration(1.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 1.0
            }, completion: nil)
    }
    
    func fadeOut() {
        UIView.animateWithDuration(1.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.alpha = 0.0
            }, completion: nil)
    }
}