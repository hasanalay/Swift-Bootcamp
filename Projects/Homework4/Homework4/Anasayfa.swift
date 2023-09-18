//
//  ViewController.swift
//  Homework4
//
//  Created by Hasan Alay on 18.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func butonGitA(_ sender: Any) {
        performSegue(withIdentifier: "GitSayfaA", sender: nil)
    }
    @IBAction func butonGitX(_ sender: Any) {
        performSegue(withIdentifier: "GitSayfaX", sender: nil)
    }
}

