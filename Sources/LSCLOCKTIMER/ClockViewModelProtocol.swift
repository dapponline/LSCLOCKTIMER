//
//  ClockViewModelProtocol.swift
//  LSCLOCKTIMER
//
//  Created by Leon Smith on 31/08/2022.
//

import Foundation
import Combine
import SwiftUI

public protocol ClockViewModelProtocol {
    var currentTime: Time { get set }
    var recieve: Publishers.Autoconnect<Timer.TimerPublisher> { get set }
    var startTime: Bool { get set }
    var monthValue: CGFloat { get set }
    func runTimer()
}
