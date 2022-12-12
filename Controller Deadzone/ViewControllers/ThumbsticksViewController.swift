//
//  ViewController.swift
//  Controller Deadzone
//
//  Created by Fatih Sağlam on 10.12.2022.
//

import UIKit
import GameController

class ThumbsticksViewController: UIViewController {
    
    var notificationCenter: NotificationCenterProtocol = NotificationCenter.default
    var gamepad: GCExtendedGamepad?

    override func viewDidLoad() {
        super.viewDidLoad()
        addControllerObserver()
    }
    
    @objc private func handleControllerDidConnect(notification: Notification) {
        guard let controller = notification.object as? GCController else { return }
        // Use the controller object to read input from the game controller.
        
        if let gamepad = controller.extendedGamepad {
            self.gamepad = gamepad
            if self.gamepad?.valueChangedHandler == nil {
                setControllerInputHandler()
            }
            
            //TODO: Update light settings
            if #available(iOS 14.0, *) {
                gamepad.controller?.light?.color = .init(red: 0, green: 0, blue: 0)
            } else {
                // Fallback on earlier versions
            }
        }
    }
    
    private func setControllerInputHandler() {
        gamepad?.valueChangedHandler = { (gamepad: GCExtendedGamepad, element: GCControllerElement) in
            switch element {
            case gamepad.leftThumbstick:
                
                if gamepad.leftThumbstick.xAxis.value >= 0 {
                    print(gamepad.leftThumbstick.xAxis.value)
                    //Add your function for the right direction
                } else if gamepad.leftThumbstick.xAxis.value <= 0 {
                    print(gamepad.leftThumbstick.xAxis.value)
                    //Add your function for the left direction
                }
                
                if gamepad.leftThumbstick.yAxis.value >= 0 {
                    print(gamepad.leftThumbstick.yAxis.value)
                    //Add your function for the up direction
                } else if gamepad.leftThumbstick.yAxis.value <= 0 {
                    print(gamepad.leftThumbstick.yAxis.value)
                    //Add your function for the down direction
                }
            case gamepad.rightThumbstick:
                
                if gamepad.rightThumbstick.xAxis.value >= 0 {
                    print(gamepad.rightThumbstick.xAxis.value)
                    //Add your function for the right direction
                } else if gamepad.rightThumbstick.xAxis.value <= 0 {
                    print(gamepad.rightThumbstick.xAxis.value)
                    //Add your function for the left direction
                }
                
                if gamepad.rightThumbstick.yAxis.value >= 0 {
                    print(gamepad.rightThumbstick.yAxis.value)
                    //Add your function for the up direction
                } else if gamepad.rightThumbstick.yAxis.value <= 0 {
                    print(gamepad.rightThumbstick.yAxis.value)
                    //Add your function for the down direction
                }
                
            default:
                return
            }
        }
    }
    
    private func addControllerObserver() {
        notificationCenter.addObserver(self, selector: #selector(handleControllerDidConnect), name: .GCControllerDidConnect, object: nil)
    }

}

