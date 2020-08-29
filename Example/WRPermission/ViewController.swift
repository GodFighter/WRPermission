//
//  ViewController.swift
//  WRPermission
//
//  Created by Godfighter on 08/29/2020.
//  Copyright (c) 2020 Godfighter. All rights reserved.
//

import UIKit
import WRPermission

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        WRPermission.Microphone.request { (status) in
            print(status)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

