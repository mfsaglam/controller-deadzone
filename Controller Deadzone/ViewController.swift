//
//  ViewController.swift
//  Controller Deadzone
//
//  Created by Fatih Sağlam on 10.12.2022.
//

import UIKit
import GameController

class ViewController: UIViewController {
    
    var notificationCenter: NotificationCenterProtocol = NotificationCenter.default

    override func viewDidLoad() {
        super.viewDidLoad()
        addControllerObserver()
    }
    
    @objc private func handleControllerDidConnect(notification: Notification) {
        guard let controller = notification.object as? GCController else { return }
        // Use the controller object to read input from the game controller.
        
        if let gamepad = controller.extendedGamepad {
            if gamepad.valueChangedHandler == nil {
                controller.extendedGamepad?.valueChangedHandler = { (gamepad: GCExtendedGamepad, element: GCControllerElement) in
                    if element == gamepad.leftThumbstick {
                        if gamepad.leftThumbstick.xAxis.value >= 0 {
                            //Add your function for the right direction
                        } else if gamepad.leftThumbstick.xAxis.value <= 0 {
                            //Add your function for the left direction
                        }
                        
                        if gamepad.leftThumbstick.yAxis.value >= 0 {
                            //Add your function for the up direction
                        } else if gamepad.leftThumbstick.yAxis.value <= 0 {
                            //Add your function for the down direction
                        }
                        
                    } else if element == gamepad.rightThumbstick {
                        if gamepad.rightThumbstick.xAxis.value >= 0 {
                            //Add your function for the right direction
                        } else if gamepad.rightThumbstick.xAxis.value <= 0 {
                            //Add your function for the left direction
                        }
                        
                        if gamepad.rightThumbstick.yAxis.value >= 0 {
                            //Add your function for the up direction
                        } else if gamepad.rightThumbstick.yAxis.value <= 0 {
                            //Add your function for the down direction
                        }
                    }
                }
            }
        }
    }
    
    private func addControllerObserver() {
        notificationCenter.addObserver(self, selector: #selector(handleControllerDidConnect), name: .GCControllerDidConnect, object: nil)
    }

}

