//
//  MovieManager.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 03/07/21.
//

import Foundation

class MovieManager {
    
    var moviesToSeeCount = 0
    var moviesSeenCount = 0
    
    private var moviesToSeeArray = [MovieModel]()
    private var moviesSeenArray = [MovieModel]()


    func addMovie(movie: MovieModel) {
        moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> MovieModel {
        return moviesToSeeArray[index]
    }
    
    func checkOffMovieAtIndex(index: Int) {
        guard index < moviesToSeeCount else { return }
        moviesToSeeCount -= 1
        moviesSeenCount += 1
        
        let checkedMovie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(checkedMovie)
    }
    
    func checkedOffMovieAtIndex(index: Int) -> MovieModel {
        return moviesSeenArray[index]
    }

}
