//
//  ClockViewModel.swift
//  LSCLOCKTIMER
//
//  Created by Leon Smith on 31/08/2022.
//

import Foundation
import Combine
import SwiftUI

public class ClockViewModel: ObservableObject, ClockViewModelProtocol {
    
    @Published public var currentTime = Time(min: 0, sec: 0, hour: 0, month: 0)
    @Published public var recieve = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    @Published public var startTime = false
    @Published public var monthValue: CGFloat = 0.0
    
    public init() {
        runTimer()
    }
    
    public func runTimer() {
        let calender = Calendar.current
        let min      = calender.component(.minute, from: Date())
        let sec      = calender.component(.second, from: Date())
        let hour     = calender.component(.hour, from: Date())
        let month    = calender.component(.month, from: Date())
        
        withAnimation(Animation.linear(duration: 0.01)) {
            self.currentTime = Time(min: min, sec: sec, hour: hour, month: month)
        }
    }
}
