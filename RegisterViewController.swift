//
//  RegisterViewController.swift
//  Screen Navigation Demo
//
//  Created by Tatiana Pasechnik on 14/03/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerTextField: UITextField!
    @IBOutlet weak var registerPwdTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerBtn(_ sender: UIButton) {
        let un = registerTextField.text
        let pwd = registerPwdTF.text
        if un!.isEmpty || pwd!.isEmpty {
            showMessage(msg: "Please enter details", controller: self)
        } else{
            username = un!
            password = pwd!
            showMessage(msg: "Registered sucessfully", controller: self)
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
