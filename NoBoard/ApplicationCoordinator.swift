//
//  ApplicationCoordinator.swift
//  NoBoard
//
//  Created by Zhao Wang on 3/13/17.
//  Copyright © 2017 Zhao Wang. All rights reserved.
//

import Foundation
import UIKit

class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController = UITabBarController()

    let wordsNavigationController = UINavigationController()
    let phrasesNavigationController = UINavigationController()

    let wordsCoordinator: WordsCoordinator
    let phrasesCoordinator: PhrasesCoordinator

    init(window: UIWindow) {
        self.window = window
        wordsNavigationController.title = "Words"
        phrasesNavigationController.title = "Phrases"
        wordsNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        phrasesNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        let viewControllers = [wordsNavigationController, phrasesNavigationController]
        self.rootViewController.setViewControllers(viewControllers, animated: false)
        self.rootViewController.tabBar.backgroundColor = .red
        self.rootViewController.tabBar.barStyle = .default
        self.wordsCoordinator = WordsCoordinator(naviController: wordsNavigationController)
        self.phrasesCoordinator = PhrasesCoordinator(naviController: phrasesNavigationController)
    }

    func start() {
        window.rootViewController = rootViewController
        wordsCoordinator.start()
        phrasesCoordinator.start()
        window.makeKeyAndVisible()
    }
}
