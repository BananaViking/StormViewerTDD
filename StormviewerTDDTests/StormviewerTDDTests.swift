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
    
    func testEachCellHasTheCorrectText() {
        // given
        let sut = ViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        for (index, picture) in sut.pictures.enumerated() {
            let indexPath = IndexPath(item: index, section: 0)
            let cell = sut.tableView(sut.tableView, cellForRowAt: indexPath)
            
            XCTAssertEqual(cell.textLabel?.text, picture)
        }
    }
    
    func testCellsHaveDisclosureIndicators() {
        // given
        let sut = ViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        for index in sut.pictures.indices {
            let indexPath = IndexPath(item: index, section: 0)
            let cell = sut.tableView(sut.tableView, cellForRowAt: indexPath)
            
            XCTAssertEqual(cell.accessoryType, .disclosureIndicator)
        }
    }

}
