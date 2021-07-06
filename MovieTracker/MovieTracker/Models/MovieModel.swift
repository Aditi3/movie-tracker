//
//  Movie.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 03/07/21.
//

import Foundation

struct MovieModel: Equatable {
    var title: String
    var releaseDate: String?
}

func==(lhs: MovieModel, rhs: MovieModel) -> Bool {
    if (lhs.title == rhs.title) {
        return true
    }
    if (lhs.releaseDate != nil && rhs.releaseDate != nil) {
        if (lhs.releaseDate == rhs.releaseDate) {
            return true
        }
    }
    return false
}
