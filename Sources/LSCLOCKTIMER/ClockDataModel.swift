//
//  DataModel.swift
//  LSCLOCKTIMER
//
//  Created by Leon Smith on 29/09/2022.
//

import Foundation

public final class ClockDataModel {
    
    public let clockViewModel: ClockViewModel
    
    var clockType: ClockImpl
    
    public init(
        clockType: ClockImpl, clockViewModel: ClockViewModel
    ) {
        self.clockType = clockType
        self.clockViewModel = clockViewModel
    }
    
    public func setupClock() {
        clockType.runClock()
    }
}



