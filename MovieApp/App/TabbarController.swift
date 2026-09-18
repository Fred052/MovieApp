//
//  TabbarController.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 11.09.26.
//

import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        let homeController = HomeViewController()
        homeController.tabBarItem = .init(title: nil, image: .init(systemName: "house.fill"), tag: 0)
        let homeNav = UINavigationController(rootViewController: homeController)
        
        let actorController = ActorController()
        actorController.tabBarItem = .init(title: nil, image: .init(systemName: "person.fill"), tag: 1)
        let actorNav = UINavigationController(rootViewController: actorController)
        viewControllers = [homeNav, actorNav]
    }
}
