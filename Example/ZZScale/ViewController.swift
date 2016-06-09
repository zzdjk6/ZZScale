//
//  ViewController.swift
//  ZZScale
//
//  Created by Chen Shenghan on 06/10/2016.
//  Copyright (c) 2016 Chen Shenghan. All rights reserved.
//

import UIKit
import ZZScale

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.zz_scaleInFactorRelativeByWidth320()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

