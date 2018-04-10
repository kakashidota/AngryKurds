//
//  GameCamera.swift
//  AngryKurds
//
//  Created by Robin kamo on 2018-04-10.
//  Copyright © 2018 Robin kamo. All rights reserved.
//

import SpriteKit

class GameCamera: SKCameraNode {
    
    func setConstarints(with scene: SKScene, and frame: CGRect, to node: SKNode?){
        
        let scaledSize = CGSize(width: scene.size.width * xScale, height: scene.size.height * yScale)
        let boardContetRect = frame
        
        let xInset = min(scaledSize.width / 2, boardContetRect.width / 2)
        let yInset = min(scaledSize.height / 2, boardContetRect.height / 2)
        let insetContentRect = boardContetRect.insetBy(dx: xInset, dy: yInset)
        
        let xRange = SKRange(lowerLimit: insetContentRect.minX, upperLimit: insetContentRect.maxX)
        let yRange = SKRange(lowerLimit: insetContentRect.minY, upperLimit: insetContentRect.maxY)
        
        let levelEdgeConinstraints = SKConstraint.positionX(xRange, y: yRange)
        
        constraints = [levelEdgeConinstraints]
        
        
        
    }
    
}
