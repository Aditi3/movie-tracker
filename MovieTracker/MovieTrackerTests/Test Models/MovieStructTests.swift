//
//  MovieStructTests.swift
//  MovieTrackerTests
//
//  Created by Aditi Agrawal on 03/07/21.
//

import XCTest
@testable import MovieTracker

class MovieStructTests: XCTestCase {
    
    let adventureMovie = MovieModel(title: "Adventure")
    let actionMovie = MovieModel(title: "Action")
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK: Set

    func testInit_SetMovieWithTitle() {
        let testMovie = MovieModel(title: "Generic")
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Generic")
    }
    
    func testInit_SetMovieTitleAndReleaseDate() {
        let testMovie = MovieModel(title: "Comedy", releaseDate: "1991")
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.releaseDate, "1991")
    }
    
    // MARK: Equatable
    
    func testEquatable_ReturnsTrue() {
        let actionMovie1 = MovieModel(title: "Action")
        let actionMovie2 = MovieModel(title: "Action")

        XCTAssertEqual(actionMovie1, actionMovie2)
    }
    
    func testEquatable_ReturnsNotEqualTitles() {
        let actionMovie1 = MovieModel(title: "Action")
        let actionMovie2 = MovieModel(title: "Adventure")

        XCTAssertNotEqual(actionMovie1, actionMovie2)
    }
    
    func testEquatable_ReturnsNotEqualReleaseDates() {
        let actionMovie1 = MovieModel(title: "Action", releaseDate: "1989")
        let actionMovie2 = MovieModel(title: "Adventure", releaseDate: "2018")

        XCTAssertNotEqual(actionMovie1, actionMovie2)
    }
    
   

}
