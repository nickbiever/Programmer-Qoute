//
//  QouteViewController.swift
//  Programmer Qoute
//
//  Created by Nick Biever on 13/03/2020.
//  Copyright © 2020 Nick Biever. All rights reserved.
//

import UIKit

class QouteViewController: UIViewController {

    let qouteView = QouteView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view = qouteView
    }
}
