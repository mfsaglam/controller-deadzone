//
//  ControllerManagerTests.swift
//  Controller DeadzoneTests
//
//  Created by Fatih Sağlam on 19.12.2022.
//

import XCTest
@testable import Controller_Deadzone

final class ControllerManagerTests: XCTestCase {
    
    func test_checkIfThereIsConnectedController_returnsFalseIfThereIsNoConnectedController() {
        let sut = ControllerManager()
        
        let isConnected = sut.checkIfThereIsConnectedController()
        
        XCTAssertFalse(isConnected)
    }

}

// Helpers


