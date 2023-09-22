//
//  ViewController.swift
//  LoginApp
//
//  Created by Вероника Карпова on 22.09.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Life Cycle Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            if let welcomeViewController = segue.destination 
                as? WelcomeViewController {
                if let text = userNameTF.text {
                    welcomeViewController.textToLabel = text
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - IBActions
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        if userNameTF.text == "User" && passwordTF.text == "Password" {
            performSegue(withIdentifier: "firstSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", 
                      message: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    @IBAction func forgotUserName(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your name is User😉")
    }
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your password is Password😉")
    }
    
    // MARK: - Private Methods
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, 
                                                message: message,
                                                preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", 
                                                style: .default,
                                                handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

