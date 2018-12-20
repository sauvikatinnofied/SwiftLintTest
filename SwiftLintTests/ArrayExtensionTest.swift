//
//  ArrayExtensionTest.swift
//  SwiftLintTests
//
//  Created by Sauvik Dolui on 20/12/18.
//  Copyright © 2018 Sauvik Dolui. All rights reserved.
//

import XCTest

@testable import SwiftLint

class ArrayExtensionTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
       
        }
    }
    
    func testArrayToIndexPath() {
        
        let ints = [0, 1, 4, 6, 7]
        let intsIndexPaths = ints.map { return IndexPath(row: $0, section: 0)}
        XCTAssertEqual(intsIndexPaths, ints.indexPathsInSection0, "Index Paths Must be Same")
    }
    
    func testUniqueElements() {
        let ints = [0, 1, 4, 6, 7, 10, 1, 6, 7, 15]
        XCTAssertEqual([0, 1, 4, 6, 7, 10, 15].count, ints.uniqueOrderedElements.count, "Elements must be uniques")
        XCTAssertEqual([0, 1, 4, 6, 7, 10, 15], ints.uniqueOrderedElements, "Elements must be uniques")
        XCTAssertEqual([0, 1, 4, 6, 7, 10, 15].count, ints.uniqueUnOrderedElements.count, "Elements must be uniques")
    }
    
    func testIndexChecking() {
        let ints = [0, 1, 4, 6, 7, 10, 1, 6, 7, 15]
        XCTAssertNil(ints.lastIndex(of: 100), "Missing element must have a nil index")
        XCTAssertEqual(3, ints.index(of: 6), "First index calculation wrong")
        XCTAssertEqual(7, ints.lastIndex(of: 6), "Last index calculation wrong")
    }
    func testIndexOfTerminalChecking() {
        let ints = [0, 1, 4, 6, 7, 10, 1, 6, 7, 15]
        XCTAssertEqual(0, ints.lastIndex(of: 0), "First element last index calculation goes wrong")
        XCTAssertEqual(9, ints.lastIndex(of: 15), "Last element last index calculation goes wrong")
    }
    func testElementBasedInsertion() {
        var ints = [0, 1, 4, 6, 7, 10, 1, 6, 7, 15]
        ints.insert(2, after: 1)
        XCTAssertEqual([0, 1, 2, 4, 6, 7, 10, 1, 6, 7, 15], ints, "Insertion is not working after an element")
        
        ints.insert(16, after: 15)
        XCTAssertEqual([0, 1, 2, 4, 6, 7, 10, 1, 6, 7, 15, 16], ints, "Insertion is not working after an element")
        
        ints.insert(2, before: -1)
        XCTAssertEqual([0, 1, 2, 4, 6, 7, 10, 1, 6, 7, 15, 16], ints, "Insertion must fail if element is not found")
        
        ints.insert(-1, before: 0)
        XCTAssertEqual([-1, 0, 1, 2, 4, 6, 7, 10, 1, 6, 7, 15, 16], ints, "Insertion is not working after an element")
        
        ints.insert(14, before: 15)
        XCTAssertEqual([-1, 0, 1, 2, 4, 6, 7, 10, 1, 6, 7, 14, 15, 16], ints, "Insertion is not working after an element")
    }

}
