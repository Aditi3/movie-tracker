//
//  MovieManager.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 03/07/21.
//

import Foundation

class MovieManager {
    
    var moviesToSeeCount = 0
    let moviesSeenCount = 0
    
    private var moviesToSeeArray = [MovieModel]()
    
    func addMovie(movie: MovieModel) {
        moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> MovieModel {
        return moviesToSeeArray[index]
    }
}
