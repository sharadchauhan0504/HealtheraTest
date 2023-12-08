//
//  HealthEraTestTests.swift
//  HealthEraTestTests
//
//  Created by Sharad Chauhan on 08/12/23.
//

import XCTest
@testable import HealthEraTest

final class HealthEraTestTests: XCTestCase {

    var responseManipulation: ResponseManipulation!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        responseManipulation = ResponseManipulation()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        responseManipulation = nil
    }
    
    func testLoadRemediesData() {
        guard let remediesData = RawJSONToData.covertJSONToData("remedies"),
            let remediesResponse = ResponseDecoder<RemediesCodable>.decode(remediesData) else {return}
        XCTAssertNotNil(remediesResponse)
    }
    
    func testLoadAdherenceData() {
        guard let adherenceData = RawJSONToData.covertJSONToData("adherence"),
            let adherenceResponse = ResponseDecoder<AdherenceCodable>.decode(adherenceData) else {return}
        XCTAssertNotNil(adherenceResponse)
    }

    func testMergeResponse() throws {
        
        let adherenceData = [
        
            AdherenceData(id: "5550a940-51db-11ec-9b41-e96ff5ce1190", remedyID: "e6b40fa0-21ff-11ec-bc71-b33f3a224f11", action: "scheduled", alarmTime: 1638260100),
            AdherenceData(id: "5550a940-51db-11ec-9b41-e96ff5ce1190", remedyID: "e6b40fa0-21ff-11ec-bc71-b33f3a224f11", action: "scheduled", alarmTime: 1638280800),
            AdherenceData(id: "5550a940-51db-11ec-9b41-e96ff5ce1190", remedyID: "e6b40fa0-21ff-11ec-bc71-b33f3a224f11", action: "scheduled", alarmTime: 1638346500),
            AdherenceData(id: "5550a940-51db-11ec-9b41-e96ff5ce1190", remedyID: "e6b40fa0-21ff-11ec-bc71-b33f3a224f12", action: "scheduled", alarmTime: 1638367200)
        
        ]
        
        
        let remediesData = [
            RemediesData(id: "6155cdfd4c49560012144b07", remedyID: "e6b40fa0-21ff-11ec-bc71-b33f3a224f11", instruction: "As needed", medicineName: "Credalast Flatbed Knit class II cotton kneecap made to measure"),
            RemediesData(id: "6155d24f4c49560012144b11", remedyID: "53c0ceb0-21fd-11ec-bc71-b33f3a224f11", instruction: "As needed", medicineName: "Credalast Flatbed Knit class II cotton kneecap made to measure")
        
        ]
        

        let mergedResponse = responseManipulation.mergeResponse(remediesData, adherenceData)
        XCTAssertNotNil(mergedResponse)
        XCTAssertTrue(!mergedResponse.isEmpty)
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
