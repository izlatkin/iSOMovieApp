//
//  MovieCell.swift
//  movie_app
//
//  Created by Ilya Zlatkin on 31.08.2021.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var synopsisLable: UILabel!
    
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
