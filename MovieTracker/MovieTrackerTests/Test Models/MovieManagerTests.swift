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
    
    let scifiMovie = MovieModel(title: "Sci-Fi")
    let dramaMovie = MovieModel(title: "Drama")
    let actionMovie = MovieModel(title: "Action")
    
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
        sut.addMovie(movie: scifiMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnMovieAtIndex() {
        sut.addMovie(movie: dramaMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0)
        XCTAssertEqual(dramaMovie.title, movieQueried.title)
    }
    
    // MARK: Checking off
    
    func testCheckOffMovie_UpdatesMovieManagerCount() {
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testCheckOffMovie_RemovesMovieFromArray() {
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)

        XCTAssertEqual(sut.movieAtIndex(index: 0).title, actionMovie.title)
    }
    
    func testCheckOffMovie_ReturnsMovieAtIndex() {
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        let movieQueried = sut.checkedOffMovieAtIndex(index: 0)
        XCTAssertEqual(actionMovie.title, movieQueried.title)
    }
    
    // MARK: Clearing and Resetting

    func testClearArrays_ReturnsArrayCountOfZero() {
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)

        XCTAssertEqual(sut.moviesToSeeCount, 1)
        XCTAssertEqual(sut.moviesSeenCount, 1)
        
        sut.clearArrays()
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    // MARK: Duplicate
    
    func testDuplicate_ShouldNotBeAddedToArray() {
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: scifiMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }

}
