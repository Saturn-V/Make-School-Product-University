//
//  CollectionViewController.swift
//  API-Sandbox
//
//  Created by Alex Aaron Peña on 10/17/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import AlamofireImage
import AlamofireNetworkActivityIndicator
import Foundation

class MoviesViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    // MARK: PROPERTIES
    
    fileprivate let sectionInsets = UIEdgeInsets(top: 20.0, left: 15.0, bottom: 20.0, right: 15.0)
    fileprivate let itemsPerRow: CGFloat = 4
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    var allMovies: [Movie] = []
    
    // MARK: IB - CODE
    @IBOutlet var moviesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height

        // Register cell classes

        // Do any additional setup after loading the view, typically from a nib.
    
        let apiToContact = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        // This code will call the iTunes top 25 movies endpoint listed above
        Alamofire.request(apiToContact).validate().responseJSON() { response in
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    
                    // Do what you need to with JSON here!
                    // The rest is all boiler plate code you'll use for API requests
                    
                    
                    // find path of all movies, convert them into array of json objects, then save them
                    let allMoviesData = json["feed"]["entry"].arrayValue
                    
                    // loop through all the json objects, and cast them as movie objects, then append them to allMovies
                    for movie in allMoviesData {
                        self.allMovies.append(Movie(json: movie))
                    }
//                    print(self.allMovies.count)
                    
                    self.moviesCollectionView.reloadData()
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allMovies.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = moviesCollectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MoviesViewCell
        
        // Configure the cell
        cell.backgroundColor = UIColor.black
        
        let url = URL(string: allMovies[indexPath.row].poster)
        cell.posterImageView.af_setImage(withURL: url!)
        
//        let url = URL(string: allMovies[indexPath.row].poster)
//        print("URL: \(url)")
//        print("movie image view: \(cell.posterImageView)")
//        let data = try? Data(contentsOf: url!)
//        
//        cell.posterImageView.image = UIImage(data: data!)

//        Alamofire.request(url).response { (data) in
//            print("Data: \(data.data)")
//            if let newData = data.data {
//                
//                
//                print(cell.movieImageView.image)
//                print("WHAT THE FUCK")
//                cell.movieImageView.image = UIImage(data: newData)
//            }
//            
//        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath)
        print(cell)
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = screenWidth - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        let heightPerItem = widthPerItem + (widthPerItem/2)

        return CGSize(width: widthPerItem, height: heightPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
        UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "DisplayMovie" {
                
                var indexPath = moviesCollectionView!.indexPath(for: sender as! UICollectionViewCell)
                
                let movie = allMovies[(indexPath?.row)!]
                
                let displayMovieController = segue.destination as! DetailViewController
                
                displayMovieController.movie = movie
            }
        }
    }
}
