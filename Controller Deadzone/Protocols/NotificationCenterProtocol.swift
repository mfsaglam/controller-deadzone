//
//  NotificationCenterProtocol.swift
//  Controller Deadzone
//
//  Created by Fatih Sağlam on 11.12.2022.
//

import Foundation

protocol NotificationCenterProtocol {
    func addObserver(_ observer: Any, selector aSelector: Selector, name aName: NSNotification.Name?, object anObject: Any?)
    // Add any other methods of the NotificationCenter class that you need to use in your view controller here...
}
