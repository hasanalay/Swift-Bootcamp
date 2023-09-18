//
//  SayfaY.swift
//  Homework4
//
//  Created by Hasan Alay on 18.09.2023.
//

import UIKit

class SayfaY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func butonGeri(_ sender: Any) {
        //performSegue(withIdentifier: "GeriDon", sender: nil)
        navigationController?.popToRootViewController(animated: true)
    }
}
