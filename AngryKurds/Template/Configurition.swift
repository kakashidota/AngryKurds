//
//  Configurition.swift
//  AngryKurds
//
//  Created by Robin kamo on 2018-04-10.
//  Copyright © 2018 Robin kamo. All rights reserved.
//

import CoreGraphics

extension CGPoint {
    
    static public func * (left: CGPoint, right: CGFloat) -> CGPoint{
        return CGPoint(x: left.x * right, y: left.y * right)
        
    }
    
}
