//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Hasan Alay on 14.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    var sayac = 0
    override func viewDidLoad() {
        // sayfa açıldığında bir kere çalışır
        print("Yaşam döngüsü : viewDidLoad")
        super.viewDidLoad()
        labelAnasayfa.text = String(sayac)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //çalışması sayfa her göründüğünde çalışır
        //sayfaya geri dönüşü takip edebilirsiniz
        print("Yaşam döngüsü : viewWillAppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        // sayfa her görünmez olduğunda çalışır
        print("Yaşam döngüsü : viewDidDisappear")
    }

    @IBAction func buttonTikla(_ sender: Any) {
        let kisi = Kisiler(ad: "Hasan", yas: 24, boy: 1.75, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
        
    }
    
    @IBAction func butonBasla(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: "merhaba")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare Metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis"{
            print("oyun ekranına geçiş çalıştı")
            
            if let veri = sender as? Kisiler {// Any(superclas) > String(subclas) - burada downcasting yapıldı.
                print("Veri : \(veri)")
                let gidilecekVC = segue.destination as! OyunEkrani // UIViewController(Superclass) > OyunEkrani(Subclass)
                // as? veya as! ise downcasting
                gidilecekVC.kisiNesnesi = veri
            }
        }
    }
    
    
    @IBAction func butonEkle(_ sender: Any) {
        print("Ekle tıklandı")
    }
    @IBAction func butonCikis(_ sender: Any) {
        print("Çıkış tıklandı")
    }
    
}

