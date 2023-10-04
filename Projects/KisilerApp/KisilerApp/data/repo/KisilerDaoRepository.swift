//
//  KisilerDaoRepository.swift
//  KisilerApp
//
//  Created by Hasan Alay on 26.09.2023.
//

import Foundation
import RxSwift

class KisilerDaoRepository {  // database access object
    
    var kisilerListesi = BehaviorSubject<[Kisiler]> (value: [Kisiler]())
    
    
    let db:FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veriTabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        
        db = FMDatabase(path: veriTabaniURL.path)
    }
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
        
        
        db?.open()
        var liste = [Kisiler]()
        do{
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            while rs.next(){
                let kisi_id = Int(rs.string(forColumn: "kisi_id"))!
                let kisi_ad = rs.string(forColumn: "kisi_ad")!
                let kisi_tel = rs.string(forColumn: "kisi_tel")!
                
                let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                liste.append(kisi)
            }
            kisilerListesi.onNext(liste)
        }catch{
            print(error.localizedDescription)
        }
        db?close()
    }
    
    
    func veritabaniKopyala(){
            let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
            let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: kopyalanacakYer.path){
                print("Veritabanı zaten var")
            }else{
                do{
                    try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                }catch{}
            }
        }

}
