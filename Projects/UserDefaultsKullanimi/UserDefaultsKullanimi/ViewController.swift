//
//  ViewController.swift
//  UserDefaultsKullanimi
//
//  Created by Hasan Alay on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        
        // kayıt
        ud.set("Hasan", forKey: "ad")
        ud.set("1.75", forKey: "boy")
        //silme
        //ud.removeObject(forKey: "ad")

        //okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok"
        print("Gelen Ad : \(gelenAd)")
        
        let gelenBoy = ud.double(forKey: "boy")
        print("Gelen boy : \(gelenBoy)")
        
        
        //sayaç uygulama
        var sayac = ud.integer(forKey: "sayac")
        sayac += 1
        ud.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Açılış sayısı : \(sayac)"
        
    }
}

