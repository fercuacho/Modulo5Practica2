//
//  GamesController.swift
//  GOW
//
//  Created by José Fernando Cristóbal Huerta on 12/08/23.
//

import UIKit

class GamesController: UIViewController {

    let posters = Array(0...7)
    
    @IBOutlet weak var posterImage: UIImageView!
    
    @IBOutlet weak var posterPageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        posterPageControl.numberOfPages = posters.count
        posterImage.image = UIImage(named: String(posters.first!))
    }
    
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("swipe", posterPageControl.currentPage)
        
        if posterPageControl.currentPage == 0  {
            posterPageControl.currentPage = 7
            posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage - 1
            posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
        }
    }
    
    
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("swipe", posterPageControl.currentPage)

        if posterPageControl.currentPage == 0  {
            posterPageControl.currentPage = 7
            posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage + 1
            posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
        }
    }
    
    
    @IBAction func pageControllerValueChanged(_ sender: Any) {
        print("touch", posterPageControl.currentPage)
        posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
    }
    
    
}
