//
//  SwiftLintTests.swift
//  SwiftLintTests
//
//  Created by Sauvik Dolui on 22/07/17.
//  Copyright © 2017 Sauvik Dolui. All rights reserved.
//

import XCTest

class SwiftLintTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var name: String?
        
        XCTAssertNotNil(name)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
