//
//  ResetPasswordViewController.swift
//  Screen Navigation Demo
//
//  Created by Tatiana Pasechnik on 15/03/23.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func resetPwdBtn(_ sender: UIButton) {
        let un = usernameTF.text;
        let pwd = passwordTF.text;
        if(un == username)
        {
            passwordTF.text = password
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
