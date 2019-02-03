//
//  DetailViewControllerTests.swift
//  StormviewerTDDTests
//
//  Created by Banana Viking on 2/3/19.
//  Copyright © 2019 Banana Viking. All rights reserved.
//

import XCTest
@testable import StormviewerTDD

class DetailViewControllerTests: XCTestCase {

    func testDetailImageViewExists() {
        // given
        let sut = DetailViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertNotNil(sut.imageView)
    }

}
