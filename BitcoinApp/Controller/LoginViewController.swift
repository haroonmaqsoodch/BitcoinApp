//
//  LoginViewController.swift
//  BitcoinApp
//
//  Created by Haroon Maqsood on 9/16/21.
//

import Foundation
import UIKit
class LoginViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var pasword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        username.delegate = self
        pasword.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard let vc = storyboard?.instantiateViewController(identifier: allStoryboards.storyboardId.rawValue ) else { return false }
        navigationController?.pushViewController(vc, animated: true)
        return true
    }
}
