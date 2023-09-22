//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Вероника Карпова on 22.09.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(textToLabel)"
    }
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var textToLabel = ""
}


