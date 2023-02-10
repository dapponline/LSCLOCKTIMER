import XCTest
@testable import LSCLOCKTIMER

class ClockViewModelTests: XCTestCase {
    var clockViewModel: ClockViewModel!
    var dataModel: ClockDataModel!

    override func setUp() {
        super.setUp()
        clockViewModel = ClockViewModel()
        dataModel = ClockDataModel(clockType: MockStandardClock())
    }

    override func tearDown() {
        clockViewModel = nil
        dataModel = nil
        super.tearDown()
    }

    func testCurrentTimeProperties() {
        let calender = Calendar.current
        let expectedMin = calender.component(.minute, from: Date())
        let expectedSec = calender.component(.second, from: Date())
        let expectedHour = calender.component(.hour, from: Date())
        let expectedMonth = calender.component(.month, from: Date())
        
        XCTAssertEqual(clockViewModel.currentTime.min, expectedMin)
        XCTAssertEqual(clockViewModel.currentTime.sec, expectedSec)
        XCTAssertEqual(clockViewModel.currentTime.hour, expectedHour)
        XCTAssertEqual(clockViewModel.currentTime.month, expectedMonth)
    }

    func testRecieveProperty() {
        XCTAssertNotNil(clockViewModel.recieve)
    }

    func testStartTimeProperty() {
        XCTAssertFalse(clockViewModel.startTime)
    }

    func testMonthValueProperty() {
        XCTAssertEqual(clockViewModel.monthValue, 0.0)
    }

    func testRunTimerFunction() {
        let currentMin = Calendar.current.component(.minute, from: Date())
        let currentSec = Calendar.current.component(.second, from: Date())
        let currentHour = Calendar.current.component(.hour, from: Date())
        let currentMonth = Calendar.current.component(.month, from: Date())
        
        clockViewModel.runTimer()
        
        XCTAssertEqual(clockViewModel.currentTime.min, currentMin)
        XCTAssertEqual(clockViewModel.currentTime.sec, currentSec)
        XCTAssertEqual(clockViewModel.currentTime.hour, currentHour)
        XCTAssertEqual(clockViewModel.currentTime.month, currentMonth)
    }

    func testDataModelSetupClockFunction() {
        dataModel.setupClock()
        XCTAssertNotNil(dataModel.clockType)
    }
}


