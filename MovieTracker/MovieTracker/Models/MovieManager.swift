//
//  MovieManager.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 03/07/21.
//

import Foundation

class MovieManager {
    
    var moviesToSeeCount: Int { return moviesToSeeArray.count}
    var moviesSeenCount: Int { return moviesSeenArray.count}
    
    private var moviesToSeeArray = [MovieModel]()
    private var moviesSeenArray = [MovieModel]()
    
    func addMovie(movie: MovieModel) {
        if !moviesToSeeArray.contains(movie) {
            moviesToSeeArray.append(movie)
        }
    }
    
    func movieAtIndex(index: Int) -> MovieModel {
        return moviesToSeeArray[index]
    }
    
    func checkOffMovieAtIndex(index: Int) {
        guard index < moviesToSeeCount else { return }
        
        let checkedMovie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(checkedMovie)
    }
    
    func checkedOffMovieAtIndex(index: Int) -> MovieModel {
        return moviesSeenArray[index]
    }
    
    func clearArrays() {
        moviesToSeeArray.removeAll()
        moviesSeenArray.removeAll()
    }
    
}
