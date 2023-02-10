# LSCLOCKTIMER

A Swift Package for ClockTimer for iOS Apps. This package is used to display the time on a clock using SwiftUI. The package provides a protocol-oriented approach to the clock, which makes it easily customizable.

Requirements

iOS 13.0+
Xcode 11+
Swift 5.0+
Installation

Swift Package Manager
The easiest way to install ClockViewModel is through the Swift Package Manager.

Go to File > Swift Packages > Add Package Dependency
Enter https://github.com/dapponline/LSCLOCKTIMER.git when asked for the package repository URL
Select the latest version and hit Next
Make sure the project you want to add ClockViewModel to is selected and hit Finish

# Usage

```swift
class someClass: ClockImpl  {
    var hourHand: Entity?
    
    var minHand: Entity?
    
    var secHand: Entity?
    
    func runClock() {
        
    }
}
```

```swift
struct ContentView : View {

    private let dataModel: DataModel
    
    init() {
        dataModel = DataModel(clockType: StandardClockImpl())
    }

    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
            .onReceive(ClockConstants.clockViewModel.recieve) { time in
                ClockConstants.clockViewModel.runTimer()
                dataModel.setupClock()
            }
    }
}
```

# Contributing

We welcome contributions to this repository! Before contributing, please read the Contributing Guidelines.

License

ClockTimer is released under the MIT license. See LICENSE for more information.
