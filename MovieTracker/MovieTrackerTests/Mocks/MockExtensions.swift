//
//  MockExtensions.swift
//  MovieTrackerTests
//
//  Created by Aditi Agrawal on 05/07/21.
//

import Foundation
import UIKit

@testable import MovieTracker

extension MovieLibraryDataServiceTests {
    
    class TableViewMock: UITableView {
        var cellDequeuedProperly = false
        
        class func initMock(dataSource: MovieLibraryDataService) -> TableViewMock {
            let mock = TableViewMock(frame: CGRect.init(x: 0, y: 0, width: 300, height: 500), style: .plain)
            mock.dataSource = dataSource
            mock.register(MovieCellMock.self, forCellReuseIdentifier: "movieCellID")
            
            return mock
        }
        
        override func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
            cellDequeuedProperly = true
            return super.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        }
    }
    
    class MovieCellMock: MovieCell {
        
        var movieData: MovieModel?
        
        override func configMovieCell(movie: MovieModel) {
            movieData = movie
        }
    }
    
}

//extension MovieCellTests {
//    
//    class MockCellDataSource: NSObject, UITableViewDataSource {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return 1
//        }
//        
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            return UITableViewCell()
//        }
//        
//        
//    }
//}








