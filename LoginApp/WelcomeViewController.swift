//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Вероника Карпова on 22.09.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    
    var textToLabel = ""
    
    // MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(textToLabel)"
    }
}


