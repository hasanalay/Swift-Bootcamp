//
//  SayfaB.swift
//  Homework4
//
//  Created by Hasan Alay on 18.09.2023.
//

import UIKit

class SayfaB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func butonGitY(_ sender: Any) {
        performSegue(withIdentifier: "GitSayfaY", sender: nil)
    }
}
