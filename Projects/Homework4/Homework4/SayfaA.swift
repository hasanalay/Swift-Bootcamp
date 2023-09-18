//
//  SayfaA.swift
//  Homework4
//
//  Created by Hasan Alay on 18.09.2023.
//

import UIKit

class SayfaA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func butonGitB(_ sender: Any) {
        performSegue(withIdentifier: "GitSayfaB", sender: nil)
    }
}
