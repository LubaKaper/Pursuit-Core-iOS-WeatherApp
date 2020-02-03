//
//  TabViewController.swift
//  WeatherApp
//
//  Created by Liubov Kaper  on 2/1/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    
    
    private lazy var mainVC: MainViewController = {
        // we need to get instance from storuboard and we need storyboard instance
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(identifier: "MainViewController") as? MainViewController else {
            fatalError("could not downcast to MainViewController")
        }
        return viewController
    }()
    
    private lazy var faveVC: FavoritesController = {
        // we need to get instance from storuboard and we need storyboard instance
        let storyboard = UIStoryboard(name: "Favorites", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(identifier: "FavoritesController") as? FavoritesController else {
            fatalError("could not downcast to FavoritesController")
        }
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [mainVC, FavoritesController()]
    }
    

   
}