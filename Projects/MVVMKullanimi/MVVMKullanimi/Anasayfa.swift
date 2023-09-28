//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Hasan Alay on 26.09.2023.
//

import UIKit
import RxSwift

class Anasayfa: UIViewController {

    @IBOutlet weak var tfSayi1: UITextField!
    @IBOutlet weak var tfSayi2: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var viewModel = anasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelSonuc.text = viewModel.sonuc
        
        //Dinleme - Observe - Gözlem
        _ = viewModel.sonuc.subscribe(onNext: { s in
            self.labelSonuc.text = s
        })
    }


    @IBAction func buttonToplama(_ sender: Any) {
        if let alinanSayi1 = tfSayi1.text, let alinanSayi2 = tfSayi2.text {
            viewModel.topla(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            //labelSonuc.text = viewModel.sonuc
        }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let alinanSayi1 = tfSayi1.text, let alinanSayi2 = tfSayi2.text {
            viewModel.carp(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            //labelSonuc.text = viewModel.sonuc
        }
    }
}

