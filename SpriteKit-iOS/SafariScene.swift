//
//  SafariScene.swift
//  SpriteKit-iOS
//
//  Created by Slava on 19.08.2021.
//  Copyright © 2021 Slava. All rights reserved.
//

import SpriteKit

class SafariScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = .red
        self.scaleMode = .resizeFill
        
//        MARK: Building complex content using nodes
//
//        Create the tiger object and adds to it a short animation.
//        Adds eye child node to teger node.
//        Eye forever blinking.
//        Tiger moves
        
        let tiger = SKSpriteNode(color: .green, size: CGSize(width: 50, height: 50))
        
        let hover = SKAction.sequence([SKAction.wait(forDuration: 1.0),
                                       SKAction.moveBy(x: 100, y: 50, duration: 1.0),
                                       SKAction.wait(forDuration: 1.0),
                                       SKAction.moveBy(x: -100, y: -50, duration: 1.0)])
        tiger.run(SKAction.repeatForever(hover))
        tiger.anchorPoint = .zero
        tiger.position = CGPoint(x: self.view!.bounds.size.width/2, y: self.view!.bounds.size.height/2)
        addChild(tiger)
        
        let eye = SKSpriteNode(color: .yellow, size: CGSize(width: 8, height: 8))
        let blink = SKAction.sequence([SKAction.fadeOut(withDuration: 0.25), SKAction.fadeIn(withDuration: 0.25)])
        let blinkForever = SKAction.repeatForever(blink)
        eye.run(blinkForever)
        eye.anchorPoint = .zero
        eye.position = CGPoint(x: 10, y: 30)
        tiger.addChild(eye)
    }
}
