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
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var labelSegmented: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // viewDidLoad bu metod içinde açılışta setlenmesi gereken değerleri setliyoruz.
        labelSonuc.text = "Girdi : "
        
        if mSwitch.isOn {
            labelSwitch.text = "AÇIK"
        }else {
            labelSwitch.text = "KAPALI"
        }
        // segment view defaul value'sini label'a setleme
        let secilenIndeks = segmentedControl.selectedSegmentIndex
        let secilenKategori = segmentedControl.titleForSegment(at: secilenIndeks)
        labelSegmented.text = "Seçim : \(secilenKategori!)"
        
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        indicator.isHidden = true
    }

    @IBAction func butonOku(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = "Girdi : \(alinanVeri)"
        }
    }
    
    @IBAction func butonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu_resim")
        imageView.tintColor = UIColor.green
    }
    
    @IBAction func butonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun_resim")
        imageView.tintColor = UIColor.red
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            labelSwitch.text = "AÇIK"
        }else {
            labelSwitch.text = "KAPALI"
        }
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        labelSegmented.text = "Seçim : \(secilenKategori!)"
    }
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value)) // normalde ondalıklı bir şekilde artar ama Int castingden sonra tam sayı artıyor.
    }
    
    @IBAction func stepperDegisim(_ sender: Any) {
        labelStepper.text = String(Int(stepper.value))
    }
    
    @IBAction func butonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func butonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
    @IBAction func butonGoster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)")
        let secilenIndeks = segmentedControl.selectedSegmentIndex
        let secilenKategori = segmentedControl.titleForSegment(at: secilenIndeks)
        print("Seçilen : \(secilenIndeks)")
        print("Seçilen : \(secilenKategori!)")
        print("Slider  : \(slider.value)")
        print("Stepper : \(stepper.value)")
        print("===================")
    }
    
    
}

