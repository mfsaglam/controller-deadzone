//
//  ControllerManagerTests.swift
//  Controller DeadzoneTests
//
//  Created by Fatih Sağlam on 19.12.2022.
//

import XCTest
import GameController
@testable import Controller_Deadzone

final class ControllerManagerTests: XCTestCase {
    
    func test_checkIfThereIsConnectedController_returnsFalseIfThereIsNoConnectedController() {
        let sut = ControllerManager()
        
        let isConnected = sut.checkIfThereIsConnectedController()
        
        XCTAssertFalse(isConnected)
    }

}

// Helper Classes


