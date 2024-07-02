//
//  ViewController.swift
//  RickAndMortyUIKit
//
//  Created by erick on 30/06/24.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }

    private func setupTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVc = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()

        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: episodeVc)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
            nav.navigationItem.largeTitleDisplayMode = .automatic
        }
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 0)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "location"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 3)
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

#Preview {
    return RMTabViewController()
}
