//
//  ViewController.swift
//  BankApp
//
//  Created by Hasan Alay on 16.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func butonLogin(_ sender: Any) {
        performSegue(withIdentifier: "loginEkraninaGecis", sender: nil)
    }
    
}

