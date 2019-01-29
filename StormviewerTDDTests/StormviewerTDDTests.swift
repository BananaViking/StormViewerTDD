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

}
