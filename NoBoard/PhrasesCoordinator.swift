//
//  PhrasesCoordinator.swift
//  NoBoard
//
//  Created by Zhao Wang on 3/13/17.
//  Copyright © 2017 Zhao Wang. All rights reserved.
//

import Foundation
import UIKit

class PhrasesCoordinator: Coordinator {
    let navigationController: UINavigationController

    init(naviController: UINavigationController) {
        self.navigationController = naviController
    }

    func start() {
        let vc = SecondViewController(name: "Phrases")
        self.navigationController.pushViewController(vc, animated: true)
    }
}
