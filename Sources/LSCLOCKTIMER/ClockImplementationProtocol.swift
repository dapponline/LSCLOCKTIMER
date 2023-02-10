//
//  ClockImpl.swift
//  LSCLOCKTIMER
//
//  Created by Leon Smith on 29/09/2022.
//

import RealityKit
import ARKit

public protocol ClockImpl {
    var hourHand: Entity? { get }
    var minHand: Entity? { get }
    var secHand: Entity? { get }
    func runClock()
}


