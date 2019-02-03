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
    
    func testDetailViewIsImageView() {
        // given
        let sut = DetailViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertEqual(sut.view, sut.imageView)
    }
    
    func testImageViewHasWhiteBackground() {
        // given
        let sut = DetailViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertEqual(sut.imageView.backgroundColor, UIColor.white)
    }
    
    func testImageViewIsAspectFill() {
        // given
        let sut = DetailViewController()
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertEqual(sut.imageView.contentMode, .scaleAspectFill)
    }

}
