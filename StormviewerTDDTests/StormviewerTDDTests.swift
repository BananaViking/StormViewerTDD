//
//  StormviewerTDDTests.swift
//  StormviewerTDDTests
//
//  Created by Banana Viking on 1/29/19.
//  Copyright © 2019 Banana Viking. All rights reserved.
//

import XCTest
@testable import StormviewerTDD

class StormviewerTDDTests: XCTestCase {

    func testLoadingImages() {
        // given
        let sut = ViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertEqual(sut.pictures.count, 10, "There should be 10 pictures.")
    }
    
    func testTableExists() {
        // given
        let sut = ViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertNotNil(sut.tableView)
    }
    
    func testTableViewHasCorrectRowCount() {
        // given
        let sut = ViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        let rowCount = sut.tableView(sut.tableView, numberOfRowsInSection: 0)
        XCTAssertEqual(rowCount, sut.pictures.count)
    }

}
