//
//  MovieCell.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 05/07/21.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configMovieCell(movie:  MovieModel) {
        self.titleLabel.text = movie.title
        self.releaseDateLabel.text = movie.releaseDate ?? ""
    }

}
