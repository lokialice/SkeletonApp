//
//  UIViewController+Extra.swift
//  SkeletonApp
//
//  Created by Macbook Pro MD102 on 9/6/15.
//  Copyright (c) 2015 Loki. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {
    func execAfter(delay: Double, block: () -> Void) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), block)
    }
}