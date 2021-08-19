//
//  OceanScene.swift
//  SpriteKit-iOS
//
//  Created by Slava on 19.08.2021.
//  Copyright © 2021 Slava. All rights reserved.
//

import SpriteKit

class OceanScene: SKScene {
    
    override func didMove(to view: SKView) {
        
//        MARK: Create text node
//
//        The name by which you can find the node in the scene
//        Places the text in the center of the screen
//        Display text to the scene
        
        let text = SKLabelNode(text: "Shark")
        text.name = "fish"
        text.position = CGPoint(x: self.view!.bounds.size.width/2, y: self.view!.bounds.size.height/2)
        addChild(text)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        MARK: Using actions to animate text in scene
//
//        Searches the node
//        To prevent the node from responding to repeated presses, the code clears the node’s name
//        Create actions
//        Run actions
        
        if let shark = self.childNode(withName: "fish") {
            shark.name = nil
            let moveUp = SKAction.moveBy(x: 0, y: 100, duration: 0.5)
            let zoom = SKAction.scale(to: 2.0, duration: 0.25)
            let pause = SKAction.wait(forDuration: 0.5)
            let fadeAway = SKAction.fadeOut(withDuration: 0.25)
            let remove = SKAction.removeFromParent()
            let moveSequence = SKAction.sequence([moveUp, zoom, pause, fadeAway, remove])
            shark.run(moveSequence)
        }
    }
//    TODO: Place the text back on the scene after removing .
//    TODO: Create an action that overrides the behavior of another action
}
