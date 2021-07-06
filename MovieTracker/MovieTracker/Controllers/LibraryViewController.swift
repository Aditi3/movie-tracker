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
        
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
        self.libraryTableView.estimatedRowHeight = 44.0
        setupUI()
        loadData()
    }
    
    func setupUI() {
        self.title = "Your List"
        if let navigationBar = self.navigationController?.navigationBar {
            navigationBar.barStyle = UIBarStyle.default;
            navigationBar.barTintColor = UIColor(red: 0.11, green: 0.73, blue: 0.33, alpha: 1.00)
            navigationBar.backgroundColor = UIColor(red: 0.11, green: 0.73, blue: 0.33, alpha: 1.00)
            navigationBar.isTranslucent = false
        }
    }
    
    func loadData() {
        
        dataService.movieManager = movieManager
        
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Action", releaseDate: "1999"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Horror", releaseDate: "1989"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Crime Thriller", releaseDate: "1979"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Indie Comedy"))
        dataService.movieManager?.addMovie(movie: MovieModel(title: "Kung Fu Flick"))
        
        libraryTableView.reloadData()
    }
}




