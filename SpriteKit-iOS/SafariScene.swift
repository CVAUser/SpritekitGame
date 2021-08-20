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
        let tiger = SKLabelNode(text: "Tiger")
        tiger.name = "tiger"
        tiger.position = CGPoint(x: self.view!.bounds.size.width/2, y: self.view!.bounds.size.height/2)
        addChild(tiger)
    }
}
