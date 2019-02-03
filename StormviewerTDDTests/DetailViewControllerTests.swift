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
    
    func testDetailLoadsImage() {
        // given
        let filenameToTest = "nss10049.jpg"
        let imageToLoad = UIImage(named: filenameToTest, in: Bundle.main, compatibleWith: nil)
        
        let sut = DetailViewController()
        sut.selectedImage = filenameToTest
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertEqual(sut.imageView.image, imageToLoad)
    }
    
    func testSelectingImageShowsDetail() {
        // given
        let sut = ViewController()
        let navigationController = UINavigationController(rootViewController: sut)
        let testIndexPath = IndexPath(row: 0, section: 0)
        
        // when
        sut.tableView(sut.tableView, didSelectRowAt: testIndexPath)
        
        let expectation = XCTestExpectation(description: "Selecting a table view cell.")
        
        // fulfill the expectation asynchronously
        DispatchQueue.main.async {
            expectation.fulfill()
        }
        
        // then
        wait(for: [expectation], timeout: 1)
        XCTAssertTrue(navigationController.topViewController is DetailViewController)
    }

}
