//
//  AssertYourSelfTests.swift
//  AssertYourSelfTests
//
//  Created by C4rl0s on 10/06/26.
//

import XCTest

class AssertYourselfTests: XCTestCase {

    func test_fail() {
        XCTFail()
    }
    
    func test_fail_withSimpleMessage() {
        XCTFail("We have a problem")
 
    }
    
    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The Answer to the Great Question is \(theAnswer)")
    }

}
