//
//  LibraryViewControllerTests.swift
//  MovieTrackerTests
//
//  Created by Aditi Agrawal on 04/07/21.
//

import XCTest

@testable import MovieTracker

class LibraryViewControllerTests: XCTestCase {
    
    var sut: LibraryViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LibraryViewController") as LibraryViewController
        _ = sut.view
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Nil Checks
    
    func testLibraryVC_TableViewShouldNotBeNil() {
        XCTAssertNotNil(sut.libraryTableView)
    }
    
    // MARK: Data Source
    
    func testDataSource_ViewDidLoad_SetsTableViewDataSource() {
        XCTAssertNotNil(sut.libraryTableView.dataSource)
        XCTAssertTrue(sut.libraryTableView.dataSource is MovieLibraryDataService)
    }
    
    // MARK: Delegate
    
    func testDataSource_ViewDidLoad_SetsTableViewDelegate() {
        XCTAssertNotNil(sut.libraryTableView.delegate)
        XCTAssertTrue(sut.libraryTableView.delegate is MovieLibraryDataService)
    }
    
    // MARK: Data Service Assumptions
    
    func testDataService_ViewDidLoad_SingleDataSerice() {
        XCTAssertEqual(sut.libraryTableView.dataSource is MovieLibraryDataService, sut.libraryTableView.delegate is MovieLibraryDataService)
    }
    
    
}
