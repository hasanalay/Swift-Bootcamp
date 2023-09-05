import UIKit

class Urunler {
    var renk: String?
    var fiyat:Int?
    var stokDurum:Bool?
    
    init(){
        print("boş constructor")
    }
    init (renk:String,fiyat:Int, stokDurum:Bool){
        self.renk = renk
        self.fiyat = fiyat
        self.stokDurum = stokDurum // shadowing
    }
    func satisBaslat (){ //Side effect - bir fonksiyonla bulunduğu class ın özelliğini değiştirmek
        stokDurum = true
    }
    func satisDurdur (){
        stokDurum = false
    }
    func fiyatArttir(kacFiyat:Int){
        fiyat! += kacFiyat
    }
    func fiyatDusur(kacFiyat:Int){
        fiyat! -= kacFiyat
    }
    func bilgiAl()  {
        print("-----------------------")
        print("Renk        : \(renk!)")
        print("Fiyat       : \(fiyat!)₺")
        print("Stok Durumu : \(stokDurum!)")
    }
}

// nesne oluşturma
let tv = Urunler(renk: "Beyaz", fiyat: 35000, stokDurum: true)
tv.bilgiAl()

// değer atama
tv.renk = "Siyah"
tv.fiyat = 10000
tv.stokDurum = true

// değer okuma
tv.bilgiAl()
tv.satisDurdur()
tv.bilgiAl()
tv.satisBaslat()
tv.bilgiAl()
tv.fiyatArttir(kacFiyat: 1000)
tv.bilgiAl()
tv.fiyatDusur(kacFiyat: 2500)
tv.bilgiAl()

let saat = Urunler()

saat.renk = "Metalik"
saat.fiyat = 5000
saat.stokDurum = false

saat.bilgiAl()
saat.satisBaslat()
saat.bilgiAl()
saat.fiyatArttir(kacFiyat: 4000)
saat.bilgiAl()
