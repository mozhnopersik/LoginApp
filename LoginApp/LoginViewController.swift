//
//  ViewController.swift
//  LoginApp
//
//  Created by Вероника Карпова on 22.09.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var userNameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        // Проверяем, что содержимое первого текстового поля равно "User" и второго - "Password"
        if userNameTF.text == "User" && passwordTF.text == "Password" {
            // Если условия выполняются, выполняем переход на следующий контроллер
            performSegue(withIdentifier: "firstSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            if let welcomeViewController = segue.destination as? WelcomeViewController {
                if let text = userNameTF.text {
                    welcomeViewController.textToLabel = text
                }
            }
        }
    }
    
    @IBAction func forgotUserName(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your name is User😉")
    }
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your password is Password😉")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

