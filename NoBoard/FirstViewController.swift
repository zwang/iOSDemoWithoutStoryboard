//
//  FirstViewController.swift
//  NoBoard
//
//  Created by Zhao Wang on 3/13/17.
//  Copyright © 2017 Zhao Wang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    private let name: String
    init(name: String) {
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.frame = UIScreen.main.bounds
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel()
        label.text = self.name
        self.view.addSubview(label)
        label.sizeToFit()
        label.center = self.view.center
        label.textColor = .blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

