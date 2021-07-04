//
//  MovieManagerTests.swift
//  MovieTrackerTests
//
//  Created by Aditi Agrawal on 03/07/21.
//

import XCTest
@testable import MovieTracker

class MovieManagerTests: XCTestCase {
    
    var sut: MovieManager!
    
    override func setUpWithError() throws {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieManager()
    }
    
    override func tearDownWithError() throws {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Initial Values
    func testInit_MovieToSee_ReturnsZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testInit_MoviesSeen_ReturnZero() {
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    // MARK: Add and Query
    
    func testAdd_MovieToSee_ReturnOne() {
        let testMovie = MovieModel(title: "Sci-Fi")
        sut.addMovie(movie: testMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
        
    }
    
    func testQuery_ReturnMovieAtIndex() {
        let testMovie = MovieModel(title: "Sci-Fi")
        sut.addMovie(movie: testMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0)
        XCTAssertEqual(testMovie.title, movieQueried.title)
    }
    
    
}
