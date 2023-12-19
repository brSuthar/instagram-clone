//
//  LoginController.swift
//  instagram
//
//  Created by Bhoma ram on 14/12/23.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet var continueFB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueFB.layer.cornerRadius = 12;
        continueFB.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        if let registerVC = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") {
            self.navigationController?.pushViewController(registerVC, animated: true);
            print("")
        }
    }
}
