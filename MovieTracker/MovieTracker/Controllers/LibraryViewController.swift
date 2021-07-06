//
//  ViewController.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 03/07/21.
//

import UIKit

class LibraryViewController: UIViewController {
    
    @IBOutlet weak var libraryTableView: UITableView!
    @IBOutlet var dataService: MovieLibraryDataService!
    
    var movieManager = MovieManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        setupUI()
        loadData()
    }
    
    func setupUI() {
        self.title = "Your List"
        if let navigationBar = self.navigationController?.navigationBar {
            navigationBar.barStyle = UIBarStyle.default;
            navigationBar.barTintColor = K.Color.primary
            navigationBar.backgroundColor = K.Color.primary
            navigationBar.isTranslucent = false
        }
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
        self.libraryTableView.estimatedRowHeight = 44.0
        self.libraryTableView.tableFooterView = UIView()
    }
    
    func loadData() {
        
        dataService.movieManager = movieManager
        
        dataService.movieManager?.addMovie(movie: MovieModel(title: "The Notebook"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "The Shawshank Redemption", releaseDate: "1994"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "The Godfather", releaseDate: "1972"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "The Dark Knight", releaseDate: "2008"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Inception"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Goodfellas"))
        
        libraryTableView.reloadData()
    }
}




