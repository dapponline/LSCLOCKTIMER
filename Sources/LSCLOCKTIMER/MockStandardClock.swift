//
//  MockStandardClock.swift
//  LSCLOCKTIMER
//
//  Created by Leon Smith on 29/09/2022.
//

import SwiftUI
import RealityKit
import ARKit

class MockStandardClock: ClockImpl {
    var hourHand: Entity?
    var minHand: Entity?
    var secHand: Entity?
    func runClock() {}
}
