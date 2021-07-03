//
//  MovieStructTests.swift
//  MovieTrackerTests
//
//  Created by Aditi Agrawal on 03/07/21.
//

import XCTest
@testable import MovieTracker

class MovieStructTests: XCTestCase {

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_MovieWithTitle() {
        let testMovie = MovieModel(title: "Generic")
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Generic")
    }
    
    func testInit_MovieTitleAndReleaseDate() {
        let testMovie = MovieModel(title: "Comedy", releaseDate: "1991")
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.releaseDate, "1991")
    }

}
