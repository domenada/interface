//
//  LoginFormController.swift
//  vk_app_1
//
//  Created by Dmitry Andreyanov on 8/4/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import UIKit

class LoginFormController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let size = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: size.height, right: 0)
        
        self.scrollView.contentInset = insets
        self.scrollView.scrollIndicatorInsets = insets
    }
    
    @objc func keyboardWillHidden(notification: Notification) {
        let insets = UIEdgeInsets.zero
        self.scrollView.contentInset = insets
        self.scrollView.scrollIndicatorInsets = insets
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        let login = self.loginTextField.text ?? "nan"
        let pass = self.passwordTextField.text ?? "nan"
        
        if login == "admin" && pass == "0000" {
            print("Success")
        } else {
            print("Error")
        }
        
    }
}
