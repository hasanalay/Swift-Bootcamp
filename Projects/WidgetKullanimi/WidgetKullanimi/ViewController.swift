//
//  ViewController.swift
//  WidgetKullanimi
//
//  Created by Hasan Alay on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var labelSwitch: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = ""
        if mSwitch.isOn {
            labelSwitch.text = "AÇIK"
        }else {
            labelSwitch.text = "KAPALI"
        }
    }

    @IBAction func butonOku(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = "Girdi: \(alinanVeri)"
        }
    }
    @IBAction func butonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu_resim")
    }
    
    @IBAction func butonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun_resim")
    }
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            labelSwitch.text = "AÇIK"
        }else {
            labelSwitch.text = "KAPALI"
        }
    }
    @IBAction func butonGoster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)")
    }
    
}

