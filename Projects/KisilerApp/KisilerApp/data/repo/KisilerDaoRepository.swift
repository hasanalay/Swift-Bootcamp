//
//  KisilerDaoRepository.swift
//  KisilerApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation
import RxSwift

class KisilerDaoRepository {  // database acces object
    
    var kisilerListesi = BehaviorSubject<[Kisiler]> (value: [Kisiler]())
    
    func kaydet (kisi_ad:String, kisi_tel:String){
        print("Kişi kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    
    func guncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String) {
        print("Kişi Güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    func ara(aramaKelimesi:String){
        print("Kişi Ara : \(aramaKelimesi)")
    }
    func sil(kisi_id:Int){
        print("Kişi Sil : \(kisi_id)")
    }
    
    func kisileriYukle (){
    var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Hasan", kisi_tel: "12344")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Özlem", kisi_tel: "1234")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Mehmet", kisi_tel: "12345")
        liste.append(k1) //0.
        liste.append(k2) //1.
        liste.append(k3) //2.
        
        kisilerListesi.onNext(liste)
    }
}
