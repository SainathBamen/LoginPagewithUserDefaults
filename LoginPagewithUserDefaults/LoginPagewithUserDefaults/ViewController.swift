//
//  ViewController.swift
//  LoginPagewithUserDefaults
//
//  Created by Sainath Bamen on 23/05/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.layer.cornerRadius = 30
        
    }

    @IBAction func myBtn(_ sender: Any) {
        UserDefaults.standard.set(emailTxt.text, forKey: "email")
        let next = storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}

