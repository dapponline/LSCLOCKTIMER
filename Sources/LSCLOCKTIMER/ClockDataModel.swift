//
//  DataModel.swift
//  LSCLOCKTIMER
//
//  Created by Leon Smith on 29/09/2022.
//

import Foundation

public final class ClockDataModel {
    
    var clockType: ClockImpl
    
    public init(
        clockType: ClockImpl
    ) {
        self.clockType = clockType
    }
    
    public func setupClock() {
        clockType.runClock()
    }
}



