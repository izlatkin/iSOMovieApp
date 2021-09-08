//
//  MoviesDetailsViewController.swift
//  movie_app
//
//  Created by Ilya Zlatkin on 07.09.2021.
//

import UIKit
import AlamofireImage

class MoviesDetailsViewController: UIViewController {
    
    @IBOutlet weak var backDropImage: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var sinopsisLable: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //print(movie["title"])
        
        titleLable.text = movie["title"] as? String
        sinopsisLable.text = movie["overview"] as? String
        sinopsisLable.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/"
        var resolution = "w185"
        let posterPath = movie["poster_path"] as! String
        var posterURL = URL(string: baseURL + resolution + posterPath)
        
        posterView.af.setImage(withURL: posterURL!)
        resolution = "w780"
        posterURL = URL(string: baseURL + resolution + posterPath)
        backDropImage.af.setImage(withURL: posterURL!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
