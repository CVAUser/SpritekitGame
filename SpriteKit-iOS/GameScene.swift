//
//  GameScene.swift
//  SpriteKit-iOS
//
//  Created by Slava on 19.08.2021.
//  Copyright © 2021 Slava. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
//        Create text node
        let text = SKLabelNode(text: "Shark")
//        The name by which you can find the node in the scene
        text.name = "fish"
//        Places the text in the center of the screen
        text.position = CGPoint(x: self.view!.bounds.size.width/2, y: self.view!.bounds.size.height/2)
//        Display text to the scene
        addChild(text)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        Searches the node
        if let shark = self.childNode(withName: "fish") {
//            To prevent the node from responding to repeated presses, the code clears the node’s name
            shark.name = nil
//            Create actions
            let moveUp = SKAction.moveBy(x: 0, y: 100, duration: 0.5)
            let zoom = SKAction.scale(to: 2.0, duration: 0.25)
            let pause = SKAction.wait(forDuration: 0.5)
            let fadeAway = SKAction.fadeOut(withDuration: 0.25)
            let remove = SKAction.removeFromParent()
            let moveSequence = SKAction.sequence([moveUp, zoom, pause, fadeAway, remove])
//            Run actions
            shark.run(moveSequence)
        }
    }
}
