//
//  KisiKayit.swift
//  KisilerApp
//
//  Created by Hasan Alay on 21.09.2023.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiTelefon: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonKaydet(_ sender: Any) {
        if let ad = tfKisiAd.text,let tel = tfKisiTelefon.text {
            kaydet(kisi_ad: ad, kisi_tel: tel)
        }
    }
    func kaydet (kisi_ad:String, kisi_tel:String){
        print("Kişi kaydet : \(kisi_ad) - \(kisi_tel)")
    }
}
