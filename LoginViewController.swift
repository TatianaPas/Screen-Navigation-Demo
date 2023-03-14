//
//  LoginViewController.swift
//  Screen Navigation Demo
//
//  Created by Tatiana Pasechnik on 14/03/23.
//

import UIKit

func showMessage(msg:String, controller: UIViewController)

{
    let alert = UIAlertController(title: "", message: msg, preferredStyle: .actionSheet);
    let action = UIAlertAction(title: "OK", style: .default)
    {
        action
        in
        controller.dismiss(animated: true, completion: nil)
    }
    alert.addAction(action)
    controller.present(alert, animated: true, completion :nil)
    
}
var username:String!
var password:String!


class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        let un = usernameTF.text!
        let pwd = passwordTF.text!
        if un == username && pwd == password
        {
            showMessage(msg: "Welcome", controller: self)
        } else {
            showMessage(msg: "Wrong password", controller: self)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
