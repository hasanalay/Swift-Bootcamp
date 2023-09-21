//
//  KisiDetay.swift
//  KisilerApp
//
//  Created by Hasan Alay on 21.09.2023.
//

import UIKit

class KisiDetay: UIViewController {

    @IBOutlet weak var tfKisiTelefon: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            tfKisiTelefon.text = k.kisi_tel
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ad = tfKisiAd.text, let tel = tfKisiTelefon.text, let k = kisi {
            guncelle(kisi_id: k.kisi_id!, kisi_ad: ad, kisi_tel: tel)
        }
    }
    func guncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String) {
        print("Kişi Güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
}
