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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
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
}




