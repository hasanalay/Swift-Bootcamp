//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Hasan Alay on 14.09.2023.
//

import UIKit

class OyunEkrani: UIViewController {

    @IBOutlet weak var labelOyunEkrani: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelOyunEkrani.text = "merhaba"
    }
    
    @IBAction func butonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true)     // bir önceki sayfaya döner
        navigationController?.popToRootViewController(animated: true) // varolan ilk anasayfaya döner
    }
    
    @IBAction func butonBitti(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
}
